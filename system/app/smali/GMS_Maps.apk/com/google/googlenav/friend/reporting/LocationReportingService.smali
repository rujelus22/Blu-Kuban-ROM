.class public Lcom/google/googlenav/friend/reporting/LocationReportingService;
.super Landroid/app/IntentService;


# instance fields
.field private a:Lad/a;

.field private b:Landroid/net/ConnectivityManager;

.field private c:Lcom/google/googlenav/friend/reporting/b;

.field private d:Landroid/os/PowerManager$WakeLock;

.field private e:Lcom/google/googlenav/friend/reporting/j;

.field private f:Lcom/google/googlenav/friend/reporting/l;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "LocationReportingService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Lax/h;)Lax/i;
    .registers 3

    invoke-virtual {p1}, Lax/h;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/i;

    return-object v0
.end method

.method a(Landroid/content/Intent;)V
    .registers 12

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->a:Lad/a;

    invoke-virtual {v0}, Lad/a;->a()V

    :try_start_8
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->c:Lcom/google/googlenav/friend/reporting/b;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/b;->a()Ljava/util/List;
    :try_end_d
    .catch Lcom/google/googlenav/friend/reporting/c; {:try_start_8 .. :try_end_d} :catch_b2

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/reporting/g;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/g;->e()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->b()Z

    move-result v0

    if-nez v0, :cond_33

    :try_start_2b
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->c:Lcom/google/googlenav/friend/reporting/b;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/b;->b()V
    :try_end_30
    .catch Lcom/google/googlenav/friend/reporting/c; {:try_start_2b .. :try_end_30} :catch_31

    goto :goto_14

    :catch_31
    move-exception v0

    goto :goto_14

    :cond_33
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->f:Lcom/google/googlenav/friend/reporting/l;

    invoke-virtual {v0, v7}, Lcom/google/googlenav/friend/reporting/l;->b(Z)Ljava/util/List;

    move-result-object v0

    new-instance v4, Lax/h;

    invoke-direct {v4, v1, v0}, Lax/h;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v4}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->a(Lax/h;)Lax/i;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-static {v0, v1}, Lax/aA;->a(J)V

    if-eqz v4, :cond_14

    iget-boolean v0, v4, Lax/i;->a:Z

    if-eqz v0, :cond_14

    :try_start_5b
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->c:Lcom/google/googlenav/friend/reporting/b;

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/friend/reporting/b;->a(J)V
    :try_end_60
    .catch Lcom/google/googlenav/friend/reporting/c; {:try_start_5b .. :try_end_60} :catch_af

    iget-object v0, v4, Lax/i;->b:Lam/b;

    invoke-virtual {v0, v8}, Lam/b;->j(I)Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {v0, v8}, Lam/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->e:Lcom/google/googlenav/friend/reporting/j;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/reporting/j;->b()V

    :cond_73
    invoke-virtual {v0, v7}, Lam/b;->j(I)Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {v0, v7}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v7}, Lam/b;->d(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b6

    :cond_84
    :goto_84
    invoke-virtual {v0, v9}, Lam/b;->j(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v9}, Lam/b;->b(I)Z

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->f:Lcom/google/googlenav/friend/reporting/l;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/reporting/l;->b()Z

    move-result v1

    if-eq v1, v0, :cond_14

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->f:Lcom/google/googlenav/friend/reporting/l;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/reporting/l;->a(Z)V

    goto/16 :goto_14

    :pswitch_9d
    invoke-static {}, Lax/aO;->g()V

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->e:Lcom/google/googlenav/friend/reporting/j;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/reporting/j;->b()V

    goto :goto_84

    :pswitch_a6
    invoke-static {}, Lax/aO;->f()V

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->e:Lcom/google/googlenav/friend/reporting/j;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/reporting/j;->b()V

    goto :goto_84

    :catch_af
    move-exception v0

    goto/16 :goto_14

    :catch_b2
    move-exception v0

    goto/16 :goto_14

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_9d
    .end packed-switch
.end method

.method a()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method b()Z
    .registers 2

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    new-instance v0, Lad/a;

    invoke-direct {v0}, Lad/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->a:Lad/a;

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->a:Lad/a;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/a;->a(Landroid/content/Context;)V

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->b:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/google/googlenav/friend/reporting/a;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/friend/reporting/n;->a(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/reporting/a;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v1, Lcom/google/googlenav/friend/reporting/l;

    const-string v2, "LOCATION_REPORTING"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/friend/reporting/l;-><init>(Landroid/content/SharedPreferences;Lcom/google/googlenav/friend/reporting/a;)V

    iput-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->f:Lcom/google/googlenav/friend/reporting/l;

    new-instance v1, Lcom/google/googlenav/friend/reporting/b;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->f:Lcom/google/googlenav/friend/reporting/l;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/googlenav/friend/reporting/b;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/a;Lcom/google/googlenav/friend/reporting/l;)V

    iput-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->c:Lcom/google/googlenav/friend/reporting/b;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "LocationReportingService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/j;->a(Landroid/content/Context;)Lcom/google/googlenav/friend/reporting/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->e:Lcom/google/googlenav/friend/reporting/j;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/LocationReportingService;->a(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_e
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationReportingService;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
