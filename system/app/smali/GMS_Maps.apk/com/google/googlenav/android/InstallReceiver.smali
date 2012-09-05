.class public Lcom/google/googlenav/android/InstallReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    :try_start_0
    invoke-static {p1}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lat/h;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/app/Application;)Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->q()Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "InstallReceiver"

    const-string v2, "rsa"

    invoke-static {v1, v2}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v1, Lcom/google/googlenav/android/P;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/P;-><init>(Lcom/google/googlenav/android/InstallReceiver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/google/googlenav/android/l;->a(Ljava/util/Locale;Lcom/google/googlenav/android/C;ZZ)V
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_48
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_41

    :goto_35
    invoke-static {}, Laf/m;->f()V

    return-void

    :cond_39
    :try_start_39
    const-string v0, "InstallReceiver"

    const-string v1, "rsn"

    invoke-static {v0, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_48
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_35

    :catch_41
    move-exception v0

    :try_start_42
    const-string v1, "InstallReceiver"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_48

    goto :goto_35

    :catchall_48
    move-exception v0

    invoke-static {}, Laf/m;->f()V

    throw v0
.end method
