# Usa la imagen oficial de .NET SDK para compilar el archivo
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

# Define el directorio de trabajo
WORKDIR /app

# Copia el archivo hello.cs al contenedor
COPY hello.cs /app/hello.cs

# Crea un nuevo proyecto de consola y mueve el archivo hello.cs a Program.cs
RUN dotnet new console -n HelloWorldApp && \
    mv hello.cs HelloWorldApp/Program.cs && \
    cd HelloWorldApp && \
    dotnet publish -c Release -o /app/out

# Usa la imagen de ejecución de .NET para correr el archivo compilado
FROM mcr.microsoft.com/dotnet/runtime:6.0
WORKDIR /app
COPY --from=build-env /app/out .

# Ejecuta el programa
CMD ["dotnet", "HelloWorldApp.dll"]
