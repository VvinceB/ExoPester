<#
 # 
 #>

Describe "Test Divise" {

    $TestScriptName = "MaDivision.ps1"
    $PathTestedScript = join-path -path (split-path -parent $PSScriptRoot) -ChildPath $TestScriptName
    invoke-expression ". $PathTestedScript"

    It "Divise 2 par 4" {
        [int32]$iDe = 2
        [int32]$iPar = 4
        
        [float]$iSortie = 0

        $iSortie = Divise -Facteur $iDe -Quotient $iPar
        $iSortie | Should Be 0.5
    }
    It "Divise deux float" {
        [Float]$iDe = 10.5
        [Float]$iPar = 2.1
        
        [float]$iSortie = 0

        $iSortie = Divise -Facteur $iDe -Quotient $iPar
        $iSortie | Should Be 5
    }
    It "Divise un string:exception attendue" {
        [string]$iDe = 'a'
        [int32]$iPar = 4
        
        [float]$iSortie = 0

        {Divise -Facteur $iDe -Quotient $iPar } | Should Throw
    }
    It "Division par zero" {
        [string]$iDe = 12
        [int32]$iPar = 0
        
        [float]$iSortie = 0

        {Divise -Facteur $iDe -Quotient $iPar } | Should Throw
    }

}