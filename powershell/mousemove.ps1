Add-Type -AssemblyName System.Windows.Forms

# you already know what's going on 

while ($true)
{
  $Pos = [System.Windows.Forms.Cursor]::Position
  
  $x = ($pos.X % 500) + 100
  $y = ($pos.Y % 500) + 100
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
  Write-Output "moving mouse"
  Write-Output "x position"
  Write-Output $x
  Write-Output "y position"
  Write-Output $y
  Start-Sleep -Seconds 5
}
