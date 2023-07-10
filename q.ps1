
Function Help {

    param(
        [bool]$fromHelp
    )

    Write-Host "";

    if($fromHelp){
        Write-Host " Need help?" -ForegroundColor Blue -NoNewLine;
    }else{
        Write-Host " Unknown command!" -ForegroundColor Red -NoNewLine;
    }
    Write-Host " Avaiable commands:";

    HelpCommand "help" "View avaiable commands";
    HelpCommand "edit" "Edit q on VS Code";
    HelpCommand "mix" "Run laravel-mix in watch mode";
    HelpCommand "reset-db" "Reset Laravel database";

    Write-Host "";

}

Function HelpCommand {

    param(
        [string]$command,
        [string]$description
    )

    Write-Host " q" -ForegroundColor Yellow -NoNewLine;
    
    Write-Host " $command" -NoNewLine;
    Write-Host " - $description" -ForegroundColor DarkGray;
}

switch($args[0]){
    "help" {
        Help $true;
    }
    "edit" {
        code "$PSScriptRoot\q.ps1";
    }
    "mix" {
        npx mix watch
    }
    "reset-db" {
        php artisan migrate:fresh --seed
    }
    default {
        Help $false;
    }
}
