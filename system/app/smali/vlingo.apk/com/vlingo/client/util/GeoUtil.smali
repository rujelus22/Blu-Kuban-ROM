.class public Lcom/vlingo/client/util/GeoUtil;
.super Ljava/lang/Object;
.source "GeoUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMapIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2
    .parameter "context"

    .prologue
    .line 117
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/vlingo/client/util/GeoUtil;->getMapIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getMapIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter "context"
    .parameter "query"

    .prologue
    .line 113
    const-string v0, "0"

    const-string v1, "0"

    invoke-static {p0, p1, v0, v1}, Lcom/vlingo/client/util/GeoUtil;->getMapIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getMapIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "query"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, action:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "geo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v2, "?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p1}, Lcom/vlingo/client/core/util/UrlUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    return-object v0
.end method

.method public static getNavigateIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2
    .parameter "context"

    .prologue
    .line 94
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/vlingo/client/util/GeoUtil;->getNavigateIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getNavigateIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 11
    .parameter "context"
    .parameter "query"

    .prologue
    .line 26
    const-string v0, "client_config_nav_intent_data"

    const-string v7, "google.navigation:q="

    invoke-static {v0, v7}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, data:Ljava/lang/String;
    const-string v0, "google.navigation:q="

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0}, Lcom/vlingo/client/util/PackageUtil;->isGoogleMapsInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 30
    invoke-static {p0}, Lcom/vlingo/client/util/GeoUtil;->showGoogleNavigationUpgradeToast(Landroid/content/Context;)V

    .line 31
    invoke-static {p0, p1}, Lcom/vlingo/client/util/GeoUtil;->getMapIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 64
    :cond_1d
    :goto_1d
    return-object v8

    .line 32
    :cond_1e
    invoke-static {v2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/vlingo/client/core/util/UrlUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    :cond_39
    const-string v0, "client_config_nav_intent_action"

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v0, v7}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, action:Ljava/lang/String;
    const-string v0, "client_config_nav_intent_package"

    const-string v7, ""

    invoke-static {v0, v7}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, packageName:Ljava/lang/String;
    const-string v0, "client_config_nav_intent_activity"

    const-string v7, ""

    invoke-static {v0, v7}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, activityName:Ljava/lang/String;
    const-string v0, "client_config_nav_intent_extra_name"

    const-string v7, ""

    invoke-static {v0, v7}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, extraName:Ljava/lang/String;
    const-string v0, "client_config_nav_intent_extra_value"

    const-string v7, ""

    invoke-static {v0, v7}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, extraValue:Ljava/lang/String;
    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/vlingo/client/util/ActivityUtil;->getDynamicIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    .line 42
    .local v8, i:Landroid/content/Intent;
    if-nez v8, :cond_7d

    .line 43
    const-string v0, "google.navigation:q="

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 44
    invoke-static {p0}, Lcom/vlingo/client/util/GeoUtil;->showGoogleNavigationUpgradeToast(Landroid/content/Context;)V

    .line 48
    :goto_74
    invoke-static {p0, p1}, Lcom/vlingo/client/util/GeoUtil;->getMapIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    goto :goto_1d

    .line 46
    :cond_79
    invoke-static {p0}, Lcom/vlingo/client/util/GeoUtil;->noNavigationAppFoundToast(Landroid/content/Context;)V

    goto :goto_74

    .line 50
    :cond_7d
    invoke-static {p0, v8}, Lcom/vlingo/client/util/PackageUtil;->canHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 52
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 54
    invoke-static {p0}, Lcom/vlingo/client/util/GeoUtil;->noNavigationAppFoundToast(Landroid/content/Context;)V

    .line 62
    :goto_8c
    const/4 v8, 0x0

    goto :goto_1d

    .line 58
    :cond_8e
    invoke-static {p0}, Lcom/vlingo/client/util/GeoUtil;->showGoogleNavigationUpgradeToast(Landroid/content/Context;)V

    goto :goto_8c
.end method

.method private static noNavigationAppFoundToast(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 77
    new-instance v0, Lcom/vlingo/client/util/GeoUtil$2;

    invoke-direct {v0, p0}, Lcom/vlingo/client/util/GeoUtil$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 83
    return-void
.end method

.method private static showGoogleNavigationUpgradeToast(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 68
    new-instance v0, Lcom/vlingo/client/util/GeoUtil$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/util/GeoUtil$1;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 74
    return-void
.end method
