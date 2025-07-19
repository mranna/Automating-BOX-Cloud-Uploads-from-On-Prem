# This script connects to a SQL Server instance, runs a query to select all records from the dbo.test table,
# and exports the results to a CSV file at E:\Temp\testuploadfile.csv

$server = "<<Insert Server Name>>"
$database = "<<Insert Database Name>>"
$query = "<<Insert your query>>" # SELECT * FROM dbo.test

$outputCsv = "<<Insert the folder path and file Name>>" # E:\Temp\testuploadfile.csv

Invoke-Sqlcmd - ServerInstance $server -Database $database -Query $query | Export-Csv -Path $outputCsv -NoTypeInformation -Encoding UTF8

Write-Host "Exported the data to $outputCsv"
