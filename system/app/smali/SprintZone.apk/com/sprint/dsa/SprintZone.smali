.class public Lcom/sprint/dsa/SprintZone;
.super Landroid/app/Application;
.source "SprintZone.java"


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.sprint.dsa"

.field public static final PAGE_0:I = 0x0

.field public static final PAGE_2:I = 0x2

.field public static final PAGE_4:I = 0x4

.field public static final PAGE_5:I = 0x5

.field public static final TAG:Ljava/lang/String; = "SprintZone"

.field public static final UPDATER_PACKAGE_NAME:Ljava/lang/String; = "com.sprint.ce.updater"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static checkIfUpgradeAvailable(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 95
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v2, versionCheck:Landroid/content/Intent;
    const-string v3, "com.sprint.action.VERSION_CHECK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v3, "com.sprint.ce.updater.EXTRA_PACKAGE_NAME"

    const-string v4, "com.sprint.dsa"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-static {p0}, Lcom/sprint/dsa/dss/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v1

    .line 100
    .local v1, isFactoryDefault:Z
    if-eqz v1, :cond_20

    .line 101
    const-string v3, "com.sprint.ce.updater.EXTRA_USE_SLOT0"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    :goto_1c
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    .end local v1           #isFactoryDefault:Z
    .end local v2           #versionCheck:Landroid/content/Intent;
    :goto_1f
    return-void

    .line 103
    .restart local v1       #isFactoryDefault:Z
    .restart local v2       #versionCheck:Landroid/content/Intent;
    :cond_20
    invoke-static {v1}, Lcom/sprint/dsa/SprintZone;->getUpgradeUrl(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_1c

    .line 112
    .end local v1           #isFactoryDefault:Z
    .end local v2           #versionCheck:Landroid/content/Intent;
    :catch_2c
    move-exception v0

    .line 113
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "Error attempting to check for upgrade."

    goto :goto_1f
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sprint/dsa/SprintZone;
    .registers 2
    .parameter "context"

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/SprintZone;

    return-object v0
.end method

.method public static getUpgradeUrl(Z)Ljava/lang/String;
    .registers 4
    .parameter "isFactoryDefault"

    .prologue
    .line 45
    if-eqz p0, :cond_26

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://dsa.spcsdns.net/upgrd/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sprint-installer.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, upgradeUrl:Ljava/lang/String;
    :goto_25
    return-object v0

    .line 60
    .end local v0           #upgradeUrl:Ljava/lang/String;
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://deviceselfservice.sprint.com/upgrd/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sprint-installer.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #upgradeUrl:Ljava/lang/String;
    goto :goto_25
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .registers 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 155
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 156
    .local v2, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 157
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 160
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :goto_10
    return v3

    .line 158
    :catch_11
    move-exception v0

    .line 160
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_10
.end method

.method public static isUpgradeNeeded(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 72
    new-instance v1, Lcom/sprint/dsa/Prefs;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/Prefs;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, prefs:Lcom/sprint/dsa/Prefs;
    invoke-virtual {v1}, Lcom/sprint/dsa/Prefs;->getUpgradeAvailable()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 74
    invoke-static {p0}, Lcom/sprint/dsa/SprintZone;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 75
    .local v0, currentVersion:I
    invoke-virtual {v1}, Lcom/sprint/dsa/Prefs;->getUpgradeAvailableVersion()I

    move-result v2

    .line 77
    .local v2, upgradeVersion:I
    if-le v2, v0, :cond_18

    .line 78
    const/4 v3, 0x1

    .line 86
    .end local v0           #currentVersion:I
    .end local v2           #upgradeVersion:I
    :goto_17
    return v3

    .line 84
    :cond_18
    invoke-virtual {v1, v3, v3}, Lcom/sprint/dsa/Prefs;->setUpgradeAvailable(ZI)V

    goto :goto_17
.end method

.method public static upgradeSelf(Landroid/app/Activity;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sprint/dsa/SprintZone;->upgradeSelf(Landroid/app/Activity;Z)V

    .line 120
    return-void
.end method

.method public static upgradeSelf(Landroid/app/Activity;Z)V
    .registers 9
    .parameter "context"
    .parameter "noPrompt"

    .prologue
    .line 127
    :try_start_0
    invoke-static {p0}, Lcom/sprint/dsa/dss/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v2

    .line 128
    .local v2, isFactoryDefault:Z
    invoke-static {v2}, Lcom/sprint/dsa/SprintZone;->getUpgradeUrl(Z)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, upgradeUrl:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sprint.action.UPGRADE_CHECK"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, update:Landroid/content/Intent;
    const-string v5, "com.sprint.ce.updater.EXTRA_USE_SLOT0"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    const-string v5, "com.sprint.ce.updater.EXTRA_ALLOW_OVERRIDE"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    if-eqz p1, :cond_22

    const-string v5, "com.sprint.ce.updater.EXTRA_NO_PROMPT"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    :cond_22
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sprint.dsa"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, callBack:Landroid/content/Intent;
    const-string v5, "com.sprint.ce.updater.EXTRA_POST_UPDATE_ACTION"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 143
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 149
    .end local v0           #callBack:Landroid/content/Intent;
    .end local v2           #isFactoryDefault:Z
    .end local v3           #update:Landroid/content/Intent;
    .end local v4           #upgradeUrl:Ljava/lang/String;
    :goto_39
    return-void

    .line 145
    :catch_3a
    move-exception v1

    .line 146
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "Error attempting to upgrade."

    goto :goto_39
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 34
    return-void
.end method
