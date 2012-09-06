.class public Lcom/google/googlenav/android/T;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .registers 1

    .prologue
    .line 35
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 38
    :goto_4
    return v0

    .line 36
    :catch_5
    move-exception v0

    .line 38
    const/4 v0, 0x0

    goto :goto_4
.end method
