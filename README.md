# QLever SPARQL Endpoints: ORDO, HOOM, WikiPathways

This repository sets up three [QLever](https://github.com/ad-freiburg/qlever) SPARQL endpoints:

- **ORDO** – Orphanet Rare Disease Ontology  
- **HOOM** – Health Outcomes Ontology for Orphanet Mapping  
- **WikiPathways** – RDF export of biological pathways

Each endpoint is configured using a `Qleverfile` and includes a `get-data.sh` script for downloading or preparing its data.

## 🔧 Prerequisites

- Python 3.10+ with `venv`
- Docker (including Compose plugin)
- Recommended: Add your user to the Docker group

```bash
sudo usermod -aG docker $USER
sudo reboot
```

## 🚀 Installation

1. Clone this repository and enter it:

   ```bash
   git clone https://github.com/ERDERA/qlever-sparql-deployment.git
   cd qlever-sparql-deployment
   ```

2. Create and activate a Python virtual environment:

   ```bash
   python3 -m venv qlever-venv
   source qlever-venv/bin/activate
   pip install --upgrade pip
   pip install qlever
   ```

## Run Each Endpoint

For each endpoint folder (`ordo/`, `hoom/`, `wikipathways/`), run the following commands:

```bash
cd <folder>
./get-data.sh       # Downloads or prepares the RDF data
qlever index        # Indexes the data using the Qleverfile
qlever start        # Starts the SPARQL endpoint
```

Example:

```bash
cd ordo
./get-data.sh
qlever index
qlever start
qlever ui
```

Repeat the same steps for `hoom/` and `wikipathways/`.




##  Accessing the SPARQL Endpoints
Then visit [http://localhost:<definedport>](http://localhost:9000) in your browser.

## Folder Structure

```
.
├── ordo/
│   ├── Qleverfile
│   └── get-data.sh
├── hoom/
│   ├── Qleverfile
│   └── get-data.sh
├── wikipathways/
│   ├── Qleverfile
│   └── get-data.sh
└── qlever-ui-multi-config.json
```
