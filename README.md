# Oh Shit! I Installed a Package on Conda Base!

This set of scripts resets the base environment of conda to a clean state. It's useful when you have multiple environments and want to reset the base environment without breaking your installation. The script removes all packages from the base environment and reinstalls the packages and environments that were there before.

## Installation

Follow the instructions based on your conda version:

### For Anaconda

```bash
wget -O anaconda-base-env-reset.sh https://raw.githubusercontent.com/Elesdes/OhShitCondaBaseEnv/main/anaconda-base-env-reset.sh
chmod +x anaconda-base-env-reset.sh
```

### For Miniconda

```bash
wget -O miniconda-base-env-reset.sh https://raw.githubusercontent.com/Elesdes/OhShitCondaBaseEnv/main/miniconda-base-env-reset.sh
chmod +x miniconda-base-env-reset.sh
```

## Usage

### For Anaconda

```bash
./anaconda-base-env-reset.sh
```

### For Miniconda

```bash
./miniconda-base-env-reset.sh
```
