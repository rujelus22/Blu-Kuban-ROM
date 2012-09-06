.class public final Lcom/dropbox/android/util/Y;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    :try_start_2
    invoke-static {}, Lcom/dropbox/android/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_f} :catch_15

    move-result v2

    .line 14
    if-ne v2, v0, :cond_13

    .line 17
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 14
    goto :goto_12

    .line 15
    :catch_15
    move-exception v0

    move v0, v1

    .line 17
    goto :goto_12
.end method
