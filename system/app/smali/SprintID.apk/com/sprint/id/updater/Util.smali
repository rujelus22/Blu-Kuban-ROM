.class public Lcom/sprint/id/updater/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static log:Lcom/sprint/id/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/sprint/id/updater/Util;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/id/updater/Util;->log:Lcom/sprint/id/logger/Logger;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForUpdate(Landroid/content/Context;)Z
    .registers 8
    .parameter "ctx"

    .prologue
    .line 20
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 22
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "last_update"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 24
    .local v0, last_update_ms:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-gez v3, :cond_21

    .line 25
    sget-object v3, Lcom/sprint/id/updater/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "skipping the update check since it already ran recently"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    .line 26
    const/4 v3, 0x0

    .line 32
    :goto_20
    return v3

    .line 29
    :cond_21
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 30
    const-string v4, "last_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 31
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    const/4 v3, 0x1

    goto :goto_20
.end method

.method public static waitForNetwork(Landroid/content/Context;J)Z
    .registers 11
    .parameter "c"
    .parameter "delayMs"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 36
    sget-object v4, Lcom/sprint/id/updater/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Checking for network availability"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 38
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v1, v4, p1

    .line 41
    .local v1, end:J
    :cond_17
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_2d

    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 54
    :goto_24
    sget-object v4, Lcom/sprint/id/updater/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Network is not available"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 55
    const/4 v4, 0x0

    :goto_2c
    return v4

    .line 44
    :cond_2d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 45
    .local v3, ni:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_42

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 46
    sget-object v4, Lcom/sprint/id/updater/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Network is available"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    goto :goto_2c

    .line 49
    :cond_42
    cmp-long v4, p1, v6

    if-lez v4, :cond_50

    .line 50
    sget-object v4, Lcom/sprint/id/updater/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Network not available -- waiting..."

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 51
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 53
    :cond_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-gtz v4, :cond_17

    goto :goto_24
.end method
