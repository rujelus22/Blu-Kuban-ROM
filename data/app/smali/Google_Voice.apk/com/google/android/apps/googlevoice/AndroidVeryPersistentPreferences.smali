.class public Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;
.super Ljava/lang/Object;
.source "AndroidVeryPersistentPreferences.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;


# static fields
.field private static final CHECK_CARRIER_PROVISIONING:Ljava/lang/String; = "check_carrier_provisioning"

.field private static final DEVICE_PRIMARY_ACCOUNT:Ljava/lang/String; = "device_primary_account"

.field private static final EVER_SIGNED_IN:Ljava/lang/String; = "ever_signed_in"

.field private static final LAST_COUNTRY_ISO:Ljava/lang/String; = "last_country_iso"

.field private static final VERY_PERSISTENT:Ljava/lang/String; = "VeryPersistent"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "VeryPersistent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 26
    return-void
.end method


# virtual methods
.method public everSignedIn()Z
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ever_signed_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDevicePrimaryAccount()Ljava/lang/String;
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "device_primary_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastCountryIso()Ljava/lang/String;
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_country_iso"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCheckCarrierProvisioning()Z
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "check_carrier_provisioning"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCheckCarrierProvisioning(Z)V
    .registers 4
    .parameter "checkCarrierProvisioning"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "check_carrier_provisioning"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    return-void
.end method

.method public setDevicePrimaryAccount(Ljava/lang/String;)V
    .registers 4
    .parameter "devicePrimaryAccount"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_primary_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method

.method public setEverSignedIn(Z)V
    .registers 4
    .parameter "b"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ever_signed_in"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

.method public setLastCountryIso(Ljava/lang/String;)V
    .registers 4
    .parameter "iso"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_country_iso"

    if-nez p1, :cond_c

    const-string p1, ""

    .end local p1
    :cond_c
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public shouldCheckCarrierProvisioning()Z
    .registers 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVeryPersistentPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "check_carrier_provisioning"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
