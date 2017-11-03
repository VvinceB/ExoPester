function Divise {
    [OutputType([float])]
    param(
        # Parameter help description
        [Parameter(mandatory = $true)]
        [Int32]
        $Facteur,
        # Parameter help description
        [Parameter(mandatory = $true)]
        [Int32]
        $Quotien
    )
    try {
        Write-Output ($Facteur / $Quotien)
    }
    catch {
        Throw "Houston, we've got a problem!!"
    }
}

Describe "Test Divise" {
    It "Divise 2 par 4" {
        [int32]$iDe = 2
        [int32]$iPar = 4
        
        [float]$iSortie = 0

        $iSortie = Divise -Facteur $iDe -Quotien $iPar
        $iSortie | Should Be 0.5
    }
    It "Erreur de facteur: genere une exception" {
        [String]$iDe = 'a'
        [int32]$iPar = 4
        
        [float]$iSortie

        {Divise -Facteur $iDe -Quotien $iPar} | Should Throw
    }
    It "Erreur de quotient: genere une exception" {
        [Int32]$iDe = 21
        [String]$iPar = 'n'
        
        [float]$iSortie

        {Divise -Facteur $iDe -Quotien $iPar} | Should Throw
    }
    It "Division par zero" {
        [Int32]$iDe = 2
        [String]$iPar = 0
        
        [float]$iSortie

        {Divise -Facteur $iDe -Quotien $iPar} | Should Throw
    }
    It "Divise des nombres réels" {
        [float]$iDe = 10.5
        [float]$iPar = 2.1
        
        [float]$iSortie = 0

        $iSortie = Divise -Facteur $iDe -Quotien $iPar | Should Be 5
    }
}