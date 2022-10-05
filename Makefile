.ONESHELL:

build-backend:
	@echo "Enter project directory name to create backend:"
	read PRJNAME; \
	mkdir $$PRJNAME
	cd $$PRJNAME
	@echo "Building node backend..."
	@npm init 
	@echo ✔ "Generated package.json file\n------------------------------\n"
	@npm install @types/node ts-node --save-dev 
	@tsc --init
	@echo ✔ "Installed and configured TypeScript\n------------------------------\n"
	@echo ✔ "Installed and configured ESLint\n------------------------------\n"
	@npm install eslint --save-dev
	@npx eslint --init
	@npm install --save-dev --save-exact prettier
	@touch .prettierrc.yaml
	@echo ✔ "Installed Prettier and added .prettierrc.yaml file\n------------------------------\n"
	@npm install --save-dev nodemon 
	@echo ✔ "Installed Nodemon\n------------------------------\n"
	@echo ✔ "Backend ready\n------------------------------\n"

destroy-backend:
	@echo "Enter project directory name to destroy:"
	read PRJNAME; \
	cd $$PRJNAME
	@rm -rf node_modules
	@echo ✔ "Removed node_modules\n------------------------------\n"
	@rm package.json package-lock.json .eslint* .prettier*
	@echo ✔ "Removed package.json, package-lock.json, eslintrc and prettierrc\n------------------------------\n"
	@echo ✔ "Backend successfully removed\n------------------------------\n"

build-express:
	@echo "Please enter path to target directory or press Enter if already in correct directory:\n"
	read TARGET_DIR; \
	cd $$TARGET_DIR
	npm install express
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

