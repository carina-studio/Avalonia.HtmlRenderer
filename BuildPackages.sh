# Reset output directory
rm -r ./Packages
mkdir ./Packages
if [ "$?" != "0" ]; then
    exit
fi

# Build
dotnet build Source/Avalonia.HtmlRenderer -c Release
if [ "$?" != "0" ]; then
    exit
fi

# Package
dotnet pack Source/Avalonia.HtmlRenderer -c Release -o ./Packages