.class public interface abstract LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;
.super Ljava/lang/Object;
.source "DicatinaryPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDictionaryPackage/DicatinaryPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DictionaryBuilder"
.end annotation


# static fields
.field public static final RECEIVER_INTERFACE:Ljava/lang/String; = "com.ics.android.icskeyboard.DICTIONARY"

.field public static final RECEIVER_META_DATA:Ljava/lang/String; = "com.ics.android.icskeyboard.dictionaries"


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDictionaryName()Ljava/lang/String;
.end method

.method public abstract getDictionaryResourceId()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getPackageContext()Landroid/content/Context;
.end method
