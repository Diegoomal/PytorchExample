echo "1) Conda environment"

conda deactivate

conda env update -n project-env -f ./env.yml

conda activate project-env

echo "3) Run project"

python src/main.py

echo "4) Unity test with pytest"

pytest -s