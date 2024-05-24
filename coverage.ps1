#pip freeze > unins ; pip uninstall -y -r unins ; del unins
pip install -r requirements.txt
pip install -r requirements-dev.txt
python -m coverage run -m unittest discover .\tests\
coverage report
coverage html
coveralls report  --repo-token=$Env:REPO_TOKEN_COVERSALL
pip uninstall -y -r requirements-dev
