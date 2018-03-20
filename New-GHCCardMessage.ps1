function New-GHCCardMessage {
    [CmdletBinding()]
    param (
        # Endpoint
        [Parameter(Mandatory)]
        [scriptblock]
        $Endpoint
    )

    begin {
    }

    process {
        $Card = @{Card = $Endpoint}
        $Card
    }

    end {
    }
}


