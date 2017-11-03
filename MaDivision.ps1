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
        $Quotient
    )
    try {
        Write-Output ($Facteur / $Quotient)
    }
    catch {
        Throw "Houston, we've got a problem!!"
    }
}

function Multiplie {
    [OutputType([float])]
    param(
        # Parameter help description
        [Parameter(mandatory = $true)]
        [Int32]
        $Chiffre1,
        # Parameter help description
        [Parameter(mandatory = $true)]
        [Int32]
        $Chiffre2
    )
    try {
        Write-Output ($Chiffre1 * $Chiffre2)
    }
    catch {
        Throw "Houston, we've got a problem!!"
    }
}