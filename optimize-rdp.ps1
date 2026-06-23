# RDP Performance & Security Optimizer
Write-Host "Initializing RDP Optimization..." -ForegroundColor Cyan

# Network & Bandwidth Tuning
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" -Name "MinEncryptionLevel" -Value 2 -PropertyType DWORD -Force -ErrorAction SilentlyContinue
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "MinEncryptionLevel" -Value 2 -PropertyType DWORD -Force -ErrorAction SilentlyContinue

# Visual Compression Tuning
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "Compression" -Value 1 -PropertyType DWORD -Force -ErrorAction SilentlyContinue

# Security Hardening (NLA)
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "UserAuthentication" -Value 1 -PropertyType DWORD -Force -ErrorAction SilentlyContinue

Write-Host "RDP Optimization Complete! Restart the machine." -ForegroundColor Green
