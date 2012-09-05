.class public Lcom/google/googlenav/friend/reporting/LocationPrivacyService;
.super Landroid/app/IntentService;


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:Lad/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "LocationPrivacyService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Laf/a;)V
    .registers 9

    const-wide/32 v4, 0x36ee80

    const/4 v2, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    if-eqz v0, :cond_a

    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-interface {p1}, Laf/a;->b()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Intent;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->b:Lad/a;

    invoke-virtual {v0}, Lad/a;->a()V

    new-instance v0, Lax/aq;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3, v3, v2}, Lax/aq;-><init>(ILax/aE;Lcom/google/googlenav/android/ac;Z)V

    invoke-virtual {v0}, Lax/aq;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/ar;

    if-eqz v0, :cond_19

    iget-boolean v1, v0, Lax/ar;->a:Z

    if-nez v1, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, v0, Lax/ar;->b:Lam/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v2, v1}, Lam/g;->c(Lam/b;II)I

    move-result v0

    packed-switch v0, :pswitch_data_62

    goto :goto_19

    :pswitch_2e
    invoke-static {}, Lax/aO;->a()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {}, Lax/aA;->G()V

    :goto_37
    invoke-static {}, Lax/aO;->e()V

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/k;->a(Landroid/content/Context;)V

    goto :goto_19

    :cond_42
    invoke-static {}, Lax/aA;->H()V

    goto :goto_37

    :pswitch_46
    invoke-static {}, Lax/aA;->H()V

    invoke-static {}, Lax/aO;->f()V

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/k;->b(Landroid/content/Context;)V

    goto :goto_19

    :pswitch_54
    invoke-static {}, Lax/aA;->H()V

    invoke-static {}, Lax/aO;->g()V

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/k;->b(Landroid/content/Context;)V

    goto :goto_19

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_46
        :pswitch_54
    .end packed-switch
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "LocationPrivacyWatchdogService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lad/a;

    invoke-direct {v0}, Lad/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->b:Lad/a;

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->b:Lad/a;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_e
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/LocationPrivacyService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
