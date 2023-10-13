# flatcar-ignition
fichier de configuration pour setup flatcar

## utilisation
Démarrer FlatCar avec l'image ISO sur le PC à déployer puis exécuter les instructions suivantes

    git clone https://github.com/marvinpac-it/flatcar-ignition.git
    cd flatcar-ignition
    bash transpile.sh flatcar01 > ../ignition.json
    cd ..
    flatcar-install -d /dev/sda -i ignition.json -C stable

Remplacer `flatcar01` par le nom de serveur souhaité, et `/dev/sda` par le disque sur lequel installer.
