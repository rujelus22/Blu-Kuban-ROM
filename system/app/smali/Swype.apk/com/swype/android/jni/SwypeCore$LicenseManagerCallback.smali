.class public interface abstract Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;
.super Ljava/lang/Object;
.source "SwypeCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/jni/SwypeCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LicenseManagerCallback"
.end annotation


# virtual methods
.method public abstract closeLicense()V
.end method

.method public abstract getLicenseValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract openLicense()Z
.end method
