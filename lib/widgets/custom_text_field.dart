// استيراد مكتبة Flutter الخاصة بتصميم واجهات المستخدم
import 'package:flutter/material.dart';

// تعريف كلاس CustomTextField كـ StatelessWidget لبناء حقل نص مخصص
class CustomTextField extends StatelessWidget {
  // متغيرات تستخدم للتحكم في خصائص الحقل النصي مثل نص التلميح والأيقونة والقدرة على إخفاء النص
  final TextEditingController? controller; // للتحكم في النص المدخل
  final IconData? data; // أيقونة الحقل النصي
  final String? hintText; // نص التلميح الذي يظهر داخل الحقل
  bool? isObsecre = true; // للتحكم في إخفاء النص (مثل كلمات المرور)
  bool? enabled = true; // للتحكم في تمكين أو تعطيل الحقل النصي



  // الكونستركتور الخاص بالكلاس لتخصيص القيم عند إنشاء الـ Widget
  CustomTextField({
    this.controller,
    this.data,
    this.hintText,
    this.isObsecre,
    this.enabled,
  });

  // دالة build لبناء واجهة المستخدم الخاصة بالحقل النصي
  @override
  Widget build(BuildContext context) {
    return Container(
      // تزيين الحقل النصي باستخدام BoxDecoration
      decoration: const BoxDecoration(
        color: Colors.white, // لون خلفية الحقل
        borderRadius: BorderRadius.all(Radius.circular(10)), // جعل حواف الحقل دائرية
      ),
      // إضافة هوامش padding و margin للحقل النصي
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        // التحكم في تمكين أو تعطيل الحقل النصي
        enabled: enabled,
        // تعيين controller للتحكم في النص
        controller: controller,
        // إخفاء النص في حالة كان isObsecre = true (مفيد لكلمات المرور)
        obscureText: isObsecre!,
        // لون المؤشر عند الكتابة
        cursorColor: Theme.of(context).primaryColor,
        // إعدادات مظهر الحقل النصي
        decoration: InputDecoration(
          border: InputBorder.none, // إخفاء الإطار الافتراضي
          // الأيقونة التي تظهر بجانب النص
          prefixIcon: Icon(
            data,
            color: Colors.cyan, // لون الأيقونة
          ),
          focusColor: Theme.of(context).primaryColor, // لون التركيز عند الكتابة
          // نص التلميح الذي يظهر داخل الحقل
          hintText: hintText,
        ),
      ),
    );
  }
}

/*
ملخص شامل للكود:

1. تم تعريف كلاس CustomTextField كـ Widget مخصص لعرض حقل نص يمكن تخصيصه.
2. يتم استخدام controller للتحكم في النص المدخل في الحقل النصي.
3. يمكن إضافة أيقونة إلى الحقل النصي باستخدام data، ويتم عرض هذه الأيقونة في الجزء الأيسر من الحقل.
4. يمكن عرض نص التلميح (hintText) داخل الحقل النصي للإشارة إلى نوع البيانات المطلوب إدخالها.
5. خاصية isObsecre تتحكم فيما إذا كان النص المدخل سيظهر أم سيتم إخفاؤه (مثل الحقول الخاصة بكلمات المرور).
6. خاصية enabled تحدد إذا كان الحقل النصي مفعلاً أم معطلاً.
7. TextFormField هو العنصر الأساسي المستخدم لعرض حقل النص، مع تخصيص المظهر باستخدام InputDecoration.
8. Container يستخدم لإضافة تزيين للحقل مثل اللون والخلفية والحواف الدائرية.

بإمكانك تخصيص الحقل النصي بسهولة وفقًا لاحتياجات واجهة المستخدم في تطبيقك.
*/
