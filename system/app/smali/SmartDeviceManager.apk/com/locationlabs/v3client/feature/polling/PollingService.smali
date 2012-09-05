.class public Lcom/locationlabs/v3client/feature/polling/PollingService;
.super Landroid/app/Service;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/locationlabs/v3client/feature/polling/PollingService$a;
    }
.end annotation


# instance fields
.field a:Lbc;

.field private final b:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 143
    new-instance v0, Lcom/locationlabs/v3client/feature/polling/PollingService$a;

    invoke-direct {v0, p0}, Lcom/locationlabs/v3client/feature/polling/PollingService$a;-><init>(Lcom/locationlabs/v3client/feature/polling/PollingService;)V

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/polling/PollingService;->b:Landroid/os/IBinder;

    .line 42
    return-void
.end method

.method private a()Landroid/app/PendingIntent;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.DO_POLL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/locationlabs/v3client/feature/polling/PollingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/polling/PollingService;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 77
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/polling/PollingService;->a:Lbc;

    if-nez v0, :cond_e

    .line 78
    new-instance v0, Lbc;

    invoke-direct {v0, p0}, Lbc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/polling/PollingService;->a:Lbc;

    .line 79
    :cond_e
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/polling/PollingService;->a:Lbc;

    if-eqz v0, :cond_15

    .line 85
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/polling/PollingService;->a:Lbc;

    iget-boolean v1, v0, Lbc;->b:Z

    if-eqz v1, :cond_12

    iget-object v1, v0, Lbc;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbc;->b:Z

    .line 86
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/polling/PollingService;->a:Lbc;

    .line 88
    :cond_15
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 95
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 97
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.DO_POLL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.BROADCAST_DO_POLL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, La;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_b

    :cond_24
    const-string v1, "com.locationlabs.v3client.action.SCHEDULE_POLL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/polling/PollingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "POLLING_SERVICE_INTERVAL_MSEC"

    const-wide/32 v5, 0x1d4c0

    invoke-static {v4, v5, v6}, Ln;->a(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/polling/PollingService;->a()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_b

    :cond_4b
    const-string v1, "com.locationlabs.v3client.action.CANCEL_TIMER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/polling/PollingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/locationlabs/v3client/feature/polling/PollingService;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_b

    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_b
.end method
