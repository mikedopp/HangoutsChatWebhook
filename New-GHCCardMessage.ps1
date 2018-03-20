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




New-GHCCardMessage -Endpoint {
    New-GHCCardHeader -Title "This is a header" -subtitle "This is the sub title" -imageURL "http:\\www.img.com\img.png" -imageStyle "avatar"
    New-GHCCardSection -Endpoint {
        New-GHCCardSectionHeader -Text "Section"
        New-GHCCardWidget -Endpoint {
            New-GHCCardWidgetImage
            New-GHCCardWidgetKeyValue
        }
    }
}
