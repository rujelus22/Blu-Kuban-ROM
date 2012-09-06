.class public Lcom/google/ads/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/m;Lcom/google/ads/internal/n;)V
    .registers 7

    invoke-static {}, Lcom/google/ads/AdActivity;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/google/ads/AdActivity;->f()Lcom/google/ads/internal/m;

    move-result-object v0

    if-nez v0, :cond_23

    invoke-static {p1}, Lcom/google/ads/AdActivity;->b(Lcom/google/ads/internal/m;)Lcom/google/ads/internal/m;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_30

    invoke-virtual {p1}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ah;->c:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_33

    const-string v0, "activity was null while launching an AdActivity."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    :goto_22
    return-void

    :cond_23
    :try_start_23
    invoke-static {}, Lcom/google/ads/AdActivity;->f()Lcom/google/ads/internal/m;

    move-result-object v0

    if-eq v0, p1, :cond_e

    const-string v0, "Tried to launch a new AdActivity with a different AdManager."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_22

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/ads/AdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.ads.AdOpener"

    invoke-virtual {p2}, Lcom/google/ads/internal/n;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_47
    const-string v2, "Launching AdActivity."

    invoke-static {v2}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_47 .. :try_end_4f} :catch_50

    goto :goto_22

    :catch_50
    move-exception v0

    const-string v1, "Activity not found."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public a()Z
    .registers 3

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

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0
.end method
