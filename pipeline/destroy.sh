
echo "===== bash destroy ====="

echo "0) Remove conda env"

conda deactivate

conda remove --name project-env --all -y

echo "0) Remove dir and files"

rm -rf __pycache__
rm -rf .pytest_cache

rm -rf src/__pycache__

rm -rf docs

rm -rf tests/__pycache__
