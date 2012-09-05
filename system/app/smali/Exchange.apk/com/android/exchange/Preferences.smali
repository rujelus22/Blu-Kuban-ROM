.class public Lcom/android/exchange/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static sPreferences:Lcom/android/exchange/Preferences;


# instance fields
.field final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "AndroidMail.Main"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 44
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/exchange/Preferences;
    .registers 3
    .parameter "context"

    .prologue
    .line 53
    const-class v1, Lcom/android/exchange/Preferences;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/exchange/Preferences;->sPreferences:Lcom/android/exchange/Preferences;

    if-nez v0, :cond_e

    .line 54
    new-instance v0, Lcom/android/exchange/Preferences;

    invoke-direct {v0, p0}, Lcom/android/exchange/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/exchange/Preferences;->sPreferences:Lcom/android/exchange/Preferences;

    .line 56
    :cond_e
    sget-object v0, Lcom/android/exchange/Preferences;->sPreferences:Lcom/android/exchange/Preferences;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getActivationLicense()Ljava/lang/String;
    .registers 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/exchange/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "activationLicense"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setActivationLicense(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/exchange/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "activationLicense"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method
