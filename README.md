# تطبيق أسئلة التفاضل

هذا مشروع Flutter جاهز مبني من كود DartPad.

## المميزات
- 10 أسئلة في التفاضل
- اختيار الإجابة وتصحيحها
- إظهار الشرح
- زر السؤال التالي
- دعم اتجاه العربية RTL
- إصلاح مشكلة Bottom Overflow الموجودة في نسخة DartPad

## استخراج APK
إذا كان عندك Flutter على الكمبيوتر:
```bash
flutter pub get
flutter build apk --release
```
الملف الناتج يكون عادةً داخل:
`build/app/outputs/flutter-apk/app-release.apk`

إذا كنت تستخدم خدمة بناء سحابية مثل Codemagic، ارفع مجلد المشروع أو مستودع Git ثم اختر Android/Flutter وابنِ APK.
