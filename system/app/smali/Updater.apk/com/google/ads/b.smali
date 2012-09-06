.class public final Lcom/google/ads/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/ads/a/q;Lcom/google/ads/a/r;)V
    .registers 6

    invoke-static {}, Lcom/google/ads/AdActivity;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/google/ads/AdActivity;->f()Lcom/google/ads/a/q;

    move-result-object v0

    if-nez v0, :cond_23

    invoke-static {p0}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/a/q;)Lcom/google/ads/a/q;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_30

    :cond_e
    monitor-exit v1

    invoke-virtual {p0}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/am;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_33

    const-string v0, "activity was null while launching an AdActivity."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    :goto_22
    return-void

    :cond_23
    :try_start_23
    invoke-static {}, Lcom/google/ads/AdActivity;->f()Lcom/google/ads/a/q;

    move-result-object v0

    if-eq v0, p0, :cond_e

    const-string v0, "Tried to launch a new AdActivity with a different AdManager."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_30

    goto :goto_22

    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_33
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/ads/AdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.ads.AdOpener"

    invoke-virtual {p1}, Lcom/google/ads/a/r;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_47
    const-string v2, "Launching AdActivity."

    invoke-static {v2}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_47 .. :try_end_4f} :catch_50

    goto :goto_22

    :catch_50
    move-exception v0

    const-string v1, "Activity not found."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public static a()Z
    .registers 2

    invoke-static {}, Lcom/google/ads/AdActivity;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/google/ads/AdActivity;->e()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_10

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method
