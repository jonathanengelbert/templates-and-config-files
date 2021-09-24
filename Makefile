.ONESHELL:

build-backend:
	@echo "Building node backend..."
	@npm init -y
	@echo ✔ "Generated package.json file\n------------------------------\n"
	@npm install typescript @types/node ts-node --save-dev 
	@echo ✔ "Installed and configured TypeScript\n------------------------------\n"
	@echo ✔ "Installed and configured ESLint\n------------------------------\n"
	@npm install eslint --save-dev
	@npx eslint --init
	@npm install --save-dev --save-exact prettier
	@touch .prettierrc.yaml
	@echo ✔ "Installed Prettier and added .prettierrc.yaml file\n------------------------------\n"
	@echo ✔ "Backend ready\n------------------------------\n"

destroy-backend:
	@rm -rf node_modules
	@echo ✔ "Removed node_modules\n------------------------------\n"
	@rm package.json package-lock.json .eslint* .prettier*
	@echo ✔ "Removed package.json, package-lock.json, eslintrc and prettierrc\n------------------------------\n"
	@echo ✔ "Backend successfully removed\n------------------------------\n"

build-express:
	@echo ✔ "Express is ready\n------------------------------\n"

react-with-typescript:
	@echo "Project Name: "; \
    	read PRJNAME; \
	npx create-react-app $$PRJNAME --template typescript
	@echo  ✔ "Created create-react-app with name $$PRJNAME\n------------------------------\n"
	cd $$PRJNAME
	@npm install eslint --save-dev
	@npx eslint --init
	@npm install --save-dev --save-exact prettier
	@touch .prettierrc.yaml
	@echo ✔ "Installed Prettier and added .prettierrc.yaml file\n------------------------------\n"
	@echo ✔ "React app ready\n------------------------------\n"

