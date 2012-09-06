.class public Lcom/google/android/apps/plus/util/GservicesConfig;
.super Ljava/lang/Object;
.source "GservicesConfig.java"


# direct methods
.method public static isInstantShareEnabled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "plusone:enable_instant_share"

    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    .local v0, gservicesValue:Z
    if-nez v0, :cond_15

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_INSTANT_SHARE:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static isInstantShareVideoEnabled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "plusone:enable_instant_share_video"

    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 58
    .local v0, gservicesValue:Z
    if-nez v0, :cond_15

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_INSTANT_SHARE_VIDEO:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method
