.class public Lcom/google/googlenav/android/U;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 5
    .parameter

    .prologue
    .line 26
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 29
    const v1, 0x7fffffff

    :try_start_b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 32
    const-string v2, "com.google.android.maps.driveabout.app.NavigationService"

    iget-object v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 35
    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_2f} :catch_33

    if-eqz v0, :cond_39

    .line 36
    const/4 v0, 0x1

    .line 45
    :goto_32
    return v0

    .line 42
    :catch_33
    move-exception v0

    .line 43
    const-string v1, "PERM"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    :cond_39
    const/4 v0, 0x0

    goto :goto_32
.end method
