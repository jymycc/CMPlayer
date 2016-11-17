-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify
-ignorewarnings
-verbose
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
-keepattributes Signature
-keepattributes *JavascriptInterface*

-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-verbose

-dontoptimize
-dontpreverify

-keepattributes *Annotation*
-keep public class com.google.vending.licensing.ILicensingService
-keep public class com.android.vending.licensing.ILicensingService

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclassmembers public class * extends android.view.View {
   void set*(***);
   *** get*();
}

-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}


-dontwarn android.support.**

-keep class com.google.**{*;}
-keep class org.apache.http.**{*;}
-keep class org.json.**{*;}

-keep class org.eclipse.jdt.annotation.**{*;}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}


-keep public class * extends android.app.Activity
-keep public class * extends android.app.Fragment
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.support.v4.**

-dontwarn  android.support.v7.appcompat.**
-keep class android.support.v7.appcompat.** { *;}

-dontwarn android.support.v4.**
-keep class android.support.v4.** { *; }

-keep public class * extends android.support.v7.**
-keep public class com.android.vending.licensing.ILicensingService
-keep class android.net.http.SslError
-keep class android.webkit.**{*;}
-keep class m.framework.**{*;}
-keep class org.eclipse.jdt.**{*;}
-keep class org.eclipse.jdt.annotation.**{*;}

#lib中所有jar包
#-libraryjars libs/ffmpeglibrary.jar

-keep public class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

-keep class **.R$* {
    *;
}
-keepclassmembers class **.R$* {
    public static <fields>;
}
# Gson specific classes
-keep class sun.misc.Unsafe { *; }
-keep class com.google.gson.** { *;}
-dontwarn com.google.gson.**
-keep public class [com.rrf.app].R$*{
	public static final int *;
}
