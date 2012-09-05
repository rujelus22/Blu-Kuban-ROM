.class public Lcom/locationlabs/v3client/GpsStateService;
.super Landroid/app/Service;
.source "a"


# instance fields
.field private a:Z

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/locationlabs/v3client/GpsStateService;->a:Z

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/locationlabs/v3client/GpsStateService;->b:Landroid/os/Handler;

    .line 124
    new-instance v0, Lab;

    invoke-direct {v0, p0}, Lab;-><init>(Lcom/locationlabs/v3client/GpsStateService;)V

    iput-object v0, p0, Lcom/locationlabs/v3client/GpsStateService;->c:Landroid/content/BroadcastReceiver;

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 109
    if-eqz p1, :cond_13

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.action.TURN_ON_GPS_DETECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/locationlabs/v3client/GpsStateService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    :goto_12
    return-void

    .line 113
    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.action.TURN_OFF_GPS_DETECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/locationlabs/v3client/GpsStateService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_12
.end method

.method private a(Z)V
    .registers 10
    .parameter

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcb;

    invoke-direct {v2}, Lcb;-><init>()V

    div-long v3, v0, v6

    invoke-virtual {v2, v3, v4}, Lcb;->setTime(J)V

    if-eqz p1, :cond_31

    const-string v3, "gps_on"

    :goto_15
    invoke-virtual {v2, v3}, Lcb;->setType(Ljava/lang/String;)V

    new-instance v3, Lcg;

    invoke-direct {v3}, Lcg;-><init>()V

    div-long/2addr v0, v6

    invoke-virtual {v3, v0, v1}, Lcg;->setTime(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcb;

    aput-object v2, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcg;->mergeGpsStateNotifications(Ljava/util/Collection;)V

    .line 100
    invoke-static {p0, v3, v5}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 101
    return-void

    .line 98
    :cond_31
    const-string v3, "gps_off"

    goto :goto_15
.end method

.method private a()Z
    .registers 2

    .prologue
    .line 104
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/GpsStateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 105
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.locationlabs.v3client.BROADCAST_DO_POLL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/locationlabs/v3client/GpsStateService;->c:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/locationlabs/v3client/GpsStateService;->b:Landroid/os/Handler;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/locationlabs/v3client/GpsStateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/locationlabs/v3client/GpsStateService;->a:Z

    .line 49
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 54
    iget-boolean v0, p0, Lcom/locationlabs/v3client/GpsStateService;->a:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/locationlabs/v3client/GpsStateService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/GpsStateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/locationlabs/v3client/GpsStateService;->a:Z

    .line 55
    :cond_f
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 62
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 64
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.action.TURN_ON_GPS_DETECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/locationlabs/v3client/GpsStateService;->a()Z

    move-result v0

    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-interface {v1, v0}, Lw;->e(Z)V

    invoke-direct {p0, v0}, Lcom/locationlabs/v3client/GpsStateService;->a(Z)V

    goto :goto_b

    :cond_28
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.action.TURN_OFF_GPS_DETECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/locationlabs/v3client/GpsStateService;->stopSelf()V

    goto :goto_b

    :cond_38
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.action.CHECK_GPS_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->s:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/locationlabs/v3client/GpsStateService;->a()Z

    move-result v1

    invoke-interface {v0}, Lw;->L()Z

    move-result v2

    if-eq v2, v1, :cond_b

    invoke-direct {p0, v1}, Lcom/locationlabs/v3client/GpsStateService;->a(Z)V

    invoke-interface {v0, v1}, Lw;->e(Z)V

    goto :goto_b
.end method
