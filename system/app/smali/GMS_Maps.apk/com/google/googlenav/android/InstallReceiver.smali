.class public Lcom/google/googlenav/android/InstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 36
    :try_start_0
    invoke-static {p1}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 37
    invoke-static {p1}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/app/Application;)Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->m()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 42
    const-string v1, "InstallReceiver"

    const-string v2, "rsa"

    invoke-static {v1, v2}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/google/googlenav/android/L;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/L;-><init>(Lcom/google/googlenav/android/InstallReceiver;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/google/googlenav/android/i;->a(Ljava/util/Locale;Lcom/google/googlenav/android/x;ZZ)V
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_4b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_41

    .line 61
    :goto_35
    invoke-static {}, LaT/k;->d()V

    .line 63
    :goto_38
    return-void

    .line 53
    :cond_39
    :try_start_39
    const-string v0, "InstallReceiver"

    const-string v1, "rsn"

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4b
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_35

    .line 56
    :catch_41
    move-exception v0

    .line 57
    :try_start_42
    const-string v1, "InstallReceiver"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_4b

    .line 61
    invoke-static {}, LaT/k;->d()V

    goto :goto_38

    :catchall_4b
    move-exception v0

    invoke-static {}, LaT/k;->d()V

    throw v0
.end method
