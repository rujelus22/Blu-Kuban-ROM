.class public Lcom/android/email/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static sPreferences:Lcom/android/email/Preferences;


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTrustedSenders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/Preferences;->mTrustedSenders:Ljava/util/HashSet;

    .line 89
    const-string v0, "AndroidMail.Main"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 90
    return-void
.end method

.method public static clearLegacyBackupPreference(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 114
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accountUuids"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    return-void
.end method

.method private getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "def"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, p3}, Lcom/android/email/Preferences;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLegacyBackupPreference(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "accountUuids"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;
    .registers 3
    .parameter "context"

    .prologue
    .line 99
    const-class v1, Lcom/android/email/Preferences;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/Preferences;->sPreferences:Lcom/android/email/Preferences;

    if-nez v0, :cond_e

    .line 100
    new-instance v0, Lcom/android/email/Preferences;

    invoke-direct {v0, p0}, Lcom/android/email/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/Preferences;->sPreferences:Lcom/android/email/Preferences;

    .line 102
    :cond_e
    sget-object v0, Lcom/android/email/Preferences;->sPreferences:Lcom/android/email/Preferences;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "context"

    .prologue
    .line 106
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "account"
    .parameter "key"

    .prologue
    .line 349
    if-eqz p1, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2
    :cond_19
    return-object p2
.end method

.method private setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/android/email/Preferences;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    return-void
.end method


# virtual methods
.method public clearTrustedSenders()V
    .registers 4

    .prologue
    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Preferences;->mTrustedSenders:Ljava/util/HashSet;

    .line 247
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trustedSenders"

    iget-object v2, p0, Lcom/android/email/Preferences;->mTrustedSenders:Ljava/util/HashSet;

    invoke-virtual {p0, v2}, Lcom/android/email/Preferences;->packEmailSet(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 251
    return-void
.end method

.method public getAutoAdvanceDirection()I
    .registers 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "autoAdvance"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getDeviceUID()Ljava/lang/String;
    .registers 5

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "deviceUID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_23

    .line 173
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "deviceUID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 176
    :cond_23
    monitor-exit p0

    return-object v0

    .line 171
    .end local v0           #result:Ljava/lang/String;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEnableDebugLogging()Z
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableDebugLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableExchangeFileLogging()Z
    .registers 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableExchangeFileLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableExchangeLogging()Z
    .registers 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableExchangeLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableStrictMode()Z
    .registers 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableStrictMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getForceOneMinuteRefresh()Z
    .registers 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "forceOneMinuteRefresh"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasShownRequireManualSync(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Z
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 296
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requireManualSyncDialogShown"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/email/Preferences;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInhibitGraphicsAcceleration()Z
    .registers 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "inhibitGraphicsAcceleration"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastUsedAccountId()J
    .registers 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastAccountUsed"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOneTimeInitializationProgress()I
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "oneTimeInitializationProgress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTextZoom()I
    .registers 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "textZoom"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method packEmailSet(Ljava/util/HashSet;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method parseEmailSet(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 7
    .parameter "serialized"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 255
    .local v3, result:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 256
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, arr:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, len:I
    :goto_15
    if-ge v1, v2, :cond_23

    .line 258
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 261
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_23
    return-object v3
.end method

.method public setAutoAdvanceDirection(I)V
    .registers 4
    .parameter "direction"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoAdvance"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    return-void
.end method

.method public setEnableDebugLogging(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableDebugLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    return-void
.end method

.method public setEnableExchangeFileLogging(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableExchangeFileLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void
.end method

.method public setEnableExchangeLogging(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableExchangeLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    return-void
.end method

.method public setEnableStrictMode(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableStrictMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    return-void
.end method

.method public setForceOneMinuteRefresh(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "forceOneMinuteRefresh"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    return-void
.end method

.method public setHasShownRequireManualSync(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "value"

    .prologue
    .line 305
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requireManualSyncDialogShown"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/email/Preferences;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 306
    return-void
.end method

.method public setInhibitGraphicsAcceleration(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inhibitGraphicsAcceleration"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    return-void
.end method

.method public setLastUsedAccountId(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastAccountUsed"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    return-void
.end method

.method public setOneTimeInitializationProgress(I)V
    .registers 4
    .parameter "progress"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oneTimeInitializationProgress"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    return-void
.end method

.method public setSenderAsTrusted(Ljava/lang/String;)V
    .registers 5
    .parameter "email"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/email/Preferences;->mTrustedSenders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 234
    iget-object v0, p0, Lcom/android/email/Preferences;->mTrustedSenders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trustedSenders"

    iget-object v2, p0, Lcom/android/email/Preferences;->mTrustedSenders:Ljava/util/HashSet;

    invoke-virtual {p0, v2}, Lcom/android/email/Preferences;->packEmailSet(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    :cond_22
    return-void
.end method

.method public setTextZoom(I)V
    .registers 4
    .parameter "zoom"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "textZoom"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    return-void
.end method

.method public shouldShowImagesFor(Ljava/lang/String;)Z
    .registers 6
    .parameter "email"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/email/Preferences;->mTrustedSenders:Ljava/util/HashSet;

    if-nez v1, :cond_14

    .line 218
    :try_start_4
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "trustedSenders"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/Preferences;->parseEmailSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/Preferences;->mTrustedSenders:Ljava/util/HashSet;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_14} :catch_1b

    .line 226
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/android/email/Preferences;->mTrustedSenders:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 219
    :catch_1b
    move-exception v0

    .line 221
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Email"

    const-string v2, "Trusted sender set corrupted. Clearing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "trustedSenders"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 223
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/Preferences;->mTrustedSenders:Ljava/util/HashSet;

    goto :goto_14
.end method

.method public shouldShowRequireManualSync(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Z
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 315
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/Account;->isAutomaticSyncDisabledByRoaming(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1, p2}, Lcom/android/email/Preferences;->getHasShownRequireManualSync(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
