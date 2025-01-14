if ((Get-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction SilentlyContinue) -eq $null) 
{
    Add-PSSnapin "Microsoft.SharePoint.PowerShell"
}

$dirName = "d:\ExportedSolutions" 

$fso = new-object -ComObject scripting.filesystemobject
$fso.CreateFolder($dirName)

Write-Host Exporting solutions to $dirName  

foreach ($solution in Get-SPSolution)  
{      
    $title = $Solution.Name  
    $filename = $Solution.SolutionFile.Name 

    Write-Host "Exporting ‘$title’ to …\$filename" -nonewline  

    try {  

        $solution.SolutionFile.SaveAs("$dirName\$filename")  
        Write-Host " – done" -foreground green  
    }  
    catch  
    {  
        Write-Host " – error : $_" -foreground red  
    }  
}

