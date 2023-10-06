.PHONY: ios
ios:
	fvm flutter build ipa
	cd ios && fastlane testing

.PHONY: android
android:
	fvm flutter build appbundle
	cd android && fastlane testing

.PHONY: web
web:
	fvm flutter build web --base-href "/repository/" --web-renderer html --release
	rm -r docs/
	cp -r build/web/ docs/

.PHONY: web-prod
web-prod:
	fvm flutter build web --base-href "/" --web-renderer html --release
	rm -r prod-web-build/
	cp -r build/web/ prod-web-build/
	ansible-playbook -i ansible/hosts ansible/deploy.yml --private-key ~/.ssh/aloy-web.pem -t deploy -vvvv