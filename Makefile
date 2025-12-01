.PHONY: env data db features book test clean
env:
    pip install -r requirements.txt
data:
    python scripts/make_synth_data.py
db:
    python scripts/make_sqlite.py
features:
    python scripts/build_features.py
book:
    quarto render book
test:
    pytest -q
clean:
    rm -rf db/*.db data/processed/* book/_site book/_freeze