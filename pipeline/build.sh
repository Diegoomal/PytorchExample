
echo "===== bash build ====="

echo "00) Reset environment"

# source pipeline/destroy.sh

echo "00) Conda environment"

conda deactivate

conda env create -n project-env -f ./env.yml

conda activate project-env

echo "00) LINT verify with Flak8"

flake8 . --count --statistics

flake8 . --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics

echo "00) Generating documentation"

# pdoc src -o docs

echo "00) Run project"

python src/main.py

echo "00) Unity test with pytest"

pytest -s