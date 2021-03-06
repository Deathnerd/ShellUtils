function Get-LoadedAssemblies {
    [CmdletBinding()]
    [OutputType([System.Reflection.Assembly[]])]
    Param()
    Process {
        return [System.AppDomain]::CurrentDomain.GetAssemblies()
    }
}

function Get-UserChoice {
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string[]]$Choices
    )
    Process {
        function Render-Menu([int[]]$SelectedIndices, [boolean]$Overwrite = $false) {

        }
    }
}

filter xargs { 
    & $args[0] ($args[1..$args.length] + $_) 
}

Export-ModuleMember -Function *