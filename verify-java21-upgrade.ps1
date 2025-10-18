# Java 21 Upgrade Verification Script
# Run this script after installing Maven to verify the upgrade

Write-Host "=== Java 21 Upgrade Verification ===" -ForegroundColor Green

# Check Java version
Write-Host "`nChecking Java version..." -ForegroundColor Yellow
java -version

# Check Maven version
Write-Host "`nChecking Maven version..." -ForegroundColor Yellow
try {
    mvn -version
} catch {
    Write-Host "Maven not found in PATH. Please install Maven first." -ForegroundColor Red
    exit 1
}

# Clean the project
Write-Host "`nCleaning project..." -ForegroundColor Yellow
mvn clean

# Compile the project
Write-Host "`nCompiling with Java 21..." -ForegroundColor Yellow
mvn compile

# Run tests
Write-Host "`nRunning tests..." -ForegroundColor Yellow
mvn test

Write-Host "`nJava 21 upgrade verification completed!" -ForegroundColor Green