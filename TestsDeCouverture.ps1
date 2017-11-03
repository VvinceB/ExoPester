<#
 # Script de lancement du tests de couverture
 #>


Invoke-Pester -Script .\Test\MaDivision.tests.ps1 -CodeCoverage .\MaDivision.ps1

