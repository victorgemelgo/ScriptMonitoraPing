$hostname = "8.8.8.8" #Colocar o Endereço a ser monitorado

while ($true) {
    $pingResult = Test-Connection -ComputerName $hostname -Count 1 -Quiet
    $currentDateTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    if ($pingResult) {
        Write-Output "$currentDateTime - $hostname Esta Respondendo"
    } else {
        Write-Output "$currentDateTime - $hostname Nao esta Respondendo"
    }

    Start-Sleep -Seconds 5 # Ajuste o intervalo conforme necessário
}