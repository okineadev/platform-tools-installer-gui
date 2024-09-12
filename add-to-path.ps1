param(
    [string]$Folder
)

$envPath = [Environment]::GetEnvironmentVariable("Path", "User")

if ($envPath -notlike "*$Folder*") {
    $newPath = "$envPath;$Folder"
    [Environment]::SetEnvironmentVariable("Path", $newPath, "User")
}