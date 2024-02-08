#!/bin/bash

read -p "Lütfen Root Kullanıcı Adınızı Girin: " username

files=(
"/private/var/folders/hr/mdc7ghcs0zbb7dhwnywkjj5c0000gn/C/com.Tenorshare.ianygo2"
"/Library/Logs/DiagnosticReports/iAnyGo_2023-11-12-150531_${username}-Pro.wakeups_resource.diag"
"/Users/${username}/Library/Application Support/com.Tenorshare.ianygo2"
"/Users/${username}/Library/Application State/com.Tenorshare.ianygo2.savedState"
"/Users/${username}/Library/Application Support/iAnyGo"
"/Users/${username}/Library/Caches/com.Tenorshare.ianygo2"
"/Users/${username}/Library/Caches/iAnyGo"
"/Users/${username}/Library/Caches/Tenorshare/iAnyGo"
"/Users/${username}/Library/Caches/iAnyGo_data"
"/Users/${username}/Library/HTTPStorages/com.Tenorshare.ianygo2"
"/Users/${username}/Library/Saved Application State/com.Tenorshare.ianygo2.savedState"
)

echo -e "\033[0;32mİşleniyor...\033[0m"

for file in "${files[@]}"; do
    if [ -e "$file" ]; then
        rm -rf "$file"
    fi
done
