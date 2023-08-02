do{
    $services = 'Spooler','Dnscache','Dhcp','Winmgmt','NlaSvc'
    $servers  = 'testv5','testv6'
    $problems = @()
    
    foreach($server in $servers){
        foreach($service in $services){
           # Check the status of the service
           $service_status = (Get-Service -Name $service).status
           # If services does not run
           if(!($service_status -eq 'running')){
                # Try to start it and wait 5 seconds
                Get-Service -ComputerName $server -Name $service | Start-Service
                Start-Sleep -Seconds 5
                # Check again if it is running now, if not add info to $problems
                if(!(((Get-Service -Name $service).status) -eq 'running')){
                  $problems += "On $server service $service failed to start`n"
                }
              }
            }
          }
          # This is needed (I think) to get it looking ok in the email
          $data = $problems | Out-String
          # Send all the $problems services via email
          Send-MailMessage -from 'Manish.Chandra@xyz.com' -to 'Manish.Chandra@xyz.com'`
                           -Subject 'Failed Services'`
                           -Body $data -SmtpServer 'relay.xyz.com' -ErrorAction SilentlyContinue
    # Rerun script every 15 minutes
    start-sleep -Seconds 300
}until($infinity)