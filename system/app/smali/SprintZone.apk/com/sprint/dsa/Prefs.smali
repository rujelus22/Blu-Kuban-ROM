.class public Lcom/sprint/dsa/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# static fields
.field private static final DEV_SERVER:Z = false

.field public static final DSA_SLOT1_URL:Ljava/lang/String; = "https://deviceselfservice.sprint.com/dsa/"

.field public static final DSS_SLOT0_URL_HOSTNAME:Ljava/lang/String; = "dsa.spcsdns.net"

.field public static final DSS_URL_HOSTNAME:Ljava/lang/String; = "deviceselfservice.sprint.com"

.field public static final MARKET_PATH:Ljava/lang/String; = "market://details?id=com.sprint.zone"

.field private static final PREF_BASE_URL:Ljava/lang/String; = "baseUrl"

.field public static final PREF_BASE_URL_APP:Ljava/lang/String; = "http://prod.sprintzone.org/sz/static/sza_2_5_8.jsp"

.field public static final PREF_BASE_URL_APP_DEV:Ljava/lang/String; = "http://208.29.16.165/szone/sza_2_5_8.jsp"

.field public static final PREF_BASE_URL_PROMO:Ljava/lang/String; = "prod.sprintzone.org/mspa/rest/spa"

.field public static final PREF_BASE_URL_PROMO_DEV:Ljava/lang/String; = "http://208.29.16.165/szone/sza_promos_test.jsp"

.field public static final PREF_DATA_TEST_URL:Ljava/lang/String; = "http://prod.sprintzone.org/sz/jsp/versions.jsp"

.field public static final PREF_DATA_TEST_URL_DEV:Ljava/lang/String; = "http://208.29.16.165/szone/versions_test.jsp"

.field private static final PREF_DB_INIT:Ljava/lang/String; = "dbLoaded"

.field private static final PREF_DEBUG:Ljava/lang/String; = "debug"

.field public static final PREF_DEBUG_DEFAULT:Z = false

.field private static final PREF_FIRST_LAUNCH:Ljava/lang/String; = "firstLaunch"

.field private static final PREF_FIRST_LAUNCH_DEFAULT:Z = true

.field private static final PREF_LAUNCH_VER:Ljava/lang/String; = "launchVersion"

.field private static final PREF_POLL_INTERVAL:Ljava/lang/String; = "pollInterval"

.field public static final PREF_POLL_INTERVAL_DEFAULT:J = 0xf731400L

.field public static final PREF_UPGRADE_AVAILABLE:Ljava/lang/String; = "upgradeAvailable"

.field private static final PREF_UPGRADE_OPT:Ljava/lang/String; = "upgradeOpt"

.field private static final PREF_UPGRADE_OPT_DEFAULT:Z = false

.field private static final PREF_UPGRADE_PATH:Ljava/lang/String; = "upgradeUrl"

.field private static final PREF_UPGRADE_VER:Ljava/lang/String; = "appver"

.field public static final PREF_UPGRADE_VERSION:Ljava/lang/String; = "upgradeVersion"

.field private static final PREF_UPGRADE_VER_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SprintZone_Prefs"


# instance fields
.field private final PREFS_ID:Ljava/lang/String;

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "pref"

    iput-object v0, p0, Lcom/sprint/dsa/Prefs;->PREFS_ID:Ljava/lang/String;

    .line 90
    const-string v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    .line 91
    return-void
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .registers 7
    .parameter "context"

    .prologue
    .line 64
    const/4 v3, 0x0

    .line 67
    .local v3, ver:I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 68
    .local v2, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 69
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 73
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :goto_10
    return v3

    .line 70
    :catch_11
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SprintZone_Prefs"

    const-string v5, "Exception - Couldn\'t find package information in PackageManager"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public static getVersionString(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter "context"

    .prologue
    .line 77
    const-string v3, "0"

    .line 80
    .local v3, ver:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 81
    .local v2, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 82
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    .line 86
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :goto_11
    return-object v3

    .line 83
    :catch_12
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SprintZone_Prefs"

    const-string v5, "Exception - Couldn\'t find package information in PackageManager"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method


# virtual methods
.method public getBaseUrl(ZLjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "secure"
    .parameter "appMode"

    .prologue
    .line 170
    const-string v2, "promo"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 175
    const-string v1, "prod.sprintzone.org/mspa/rest/spa"

    .line 176
    .local v1, defaultUrl:Ljava/lang/String;
    iget-object v2, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "baseUrl"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, baseUrl:Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 190
    .end local v0           #baseUrl:Ljava/lang/String;
    .end local v1           #defaultUrl:Ljava/lang/String;
    :goto_1a
    return-object v0

    .line 180
    .restart local v0       #baseUrl:Ljava/lang/String;
    .restart local v1       #defaultUrl:Ljava/lang/String;
    :cond_1b
    if-eqz p1, :cond_2d

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 183
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 190
    .end local v0           #baseUrl:Ljava/lang/String;
    .end local v1           #defaultUrl:Ljava/lang/String;
    :cond_3d
    const-string v0, "http://prod.sprintzone.org/sz/static/sza_2_5_8.jsp"

    goto :goto_1a
.end method

.method public getDataTestUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    const-string v0, "http://prod.sprintzone.org/sz/jsp/versions.jsp"

    return-object v0
.end method

.method public getLaunchVersion()I
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "launchVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNai(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter "context"

    .prologue
    .line 99
    sget-boolean v3, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v3, :cond_7

    sget-object v1, Lcom/sprint/dsa/Util;->nai:Ljava/lang/String;

    .line 111
    :goto_6
    return-object v1

    .line 100
    :cond_7
    const-string v1, ""

    .line 104
    .local v1, result:Ljava/lang/String;
    :try_start_9
    new-instance v2, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v2, p1}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 105
    .local v2, sp:Lcom/sprint/internal/SystemProperties;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_18

    move-result-object v1

    goto :goto_6

    .line 108
    .end local v2           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_18
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SprintZone_Prefs"

    const-string v4, "Exception - Failed to retrieve the NAI"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public getPollInterval()J
    .registers 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pollInterval"

    const-wide/32 v2, 0xf731400

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShared()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getUpgradeAvailable()Z
    .registers 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "upgradeAvailable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUpgradeAvailableVersion()I
    .registers 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "upgradeVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUpgradePath()Ljava/lang/String;
    .registers 5

    .prologue
    .line 232
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "upgradeUrl"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, upgrade:Ljava/lang/String;
    return-object v0
.end method

.method public getUpgradeVersion()J
    .registers 5

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "appver"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDbInitialized()Z
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "dbLoaded"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDebug()Z
    .registers 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstLaunch()Z
    .registers 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "firstLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUpgradeOptional()Z
    .registers 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "upgradeOpt"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "baseUrl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    return-void
.end method

.method public setDbInit(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "dbLoaded"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    return-void
.end method

.method public setDebug(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "debug"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    return-void
.end method

.method public setFirstLaunch(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "firstLaunch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method public setLaunchVersion(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "launchVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    return-void
.end method

.method public setPollInterval(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pollInterval"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method public setUpgradeAvailable(ZI)V
    .registers 5
    .parameter "value"
    .parameter "version"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "upgradeAvailable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 246
    const-string v1, "upgradeVersion"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    return-void
.end method

.method public setUpgradeOptional(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 227
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "upgradeOpt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    return-void
.end method

.method public setUpgradePath(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 238
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "upgradeUrl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    return-void
.end method

.method public setUpgradeVersion(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 217
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "appver"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void
.end method
