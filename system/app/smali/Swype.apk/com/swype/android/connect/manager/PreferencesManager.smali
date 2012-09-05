.class public Lcom/swype/android/connect/manager/PreferencesManager;
.super Ljava/lang/Object;
.source "PreferencesManager.java"


# static fields
.field private static final SWYPE_PRIVATE_PREFERENCES:Ljava/lang/String; = "ConnectPrefs"

.field private static final SWYPE_PUBLIC_PREFERENCES:Ljava/lang/String; = "ConnectPrefs"


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/swype/android/connect/manager/PreferencesManager;->ctx:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public static getPrivateSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "c"

    .prologue
    .line 32
    const-string v0, "ConnectPrefs"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getPublicSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "c"

    .prologue
    .line 28
    const-string v0, "ConnectPrefs"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPrivateSettings()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/swype/android/connect/manager/PreferencesManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/swype/android/connect/manager/PreferencesManager;->getPrivateSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getPublicSettings()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/swype/android/connect/manager/PreferencesManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/swype/android/connect/manager/PreferencesManager;->getPublicSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
