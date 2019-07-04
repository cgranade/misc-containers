function Invoke-Rise {
    [CmdletBinding()]
    param (
        [string] $Path = $null
    );
    if ($null -eq $Path) {
        $Path = "."
    }
    $Volume = (Resolve-Path $Path).Path.Replace("`\", "/");
    docker run -it -p 8888:8888 -v ${Volume}:/workspace qsharp-rise
}
