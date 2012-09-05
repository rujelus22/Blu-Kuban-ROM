.class public Lcom/locationlabs/v3client/feature/drivedetect/DrivingStateService;
.super Landroid/content/BroadcastReceiver;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    .line 30
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->z:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 31
    if-eqz v0, :cond_56

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Driving state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lbw;

    invoke-direct {v2}, Lbw;-><init>()V

    div-long v3, v0, v6

    invoke-virtual {v2, v3, v4}, Lbw;->setTime(J)V

    if-eqz p1, :cond_57

    const-string v3, "driving_on"

    :goto_3b
    invoke-virtual {v2, v3}, Lbw;->setType(Ljava/lang/String;)V

    new-instance v3, Lcg;

    invoke-direct {v3}, Lcg;-><init>()V

    div-long/2addr v0, v6

    invoke-virtual {v3, v0, v1}, Lcg;->setTime(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Lbw;

    aput-object v2, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcg;->mergeDrivingStateNotifications(Ljava/util/Collection;)V

    invoke-static {p0, v3, v5}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 38
    :cond_56
    return-void

    .line 33
    :cond_57
    const-string v3, "driving_off"

    goto :goto_3b
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    const-string v1, "com.locationlabs.v3client.action.DRIVING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 22
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingStateService;->a(Landroid/content/Context;Z)V

    .line 27
    :cond_10
    :goto_10
    return-void

    .line 23
    :cond_11
    const-string v1, "com.locationlabs.v3client.action.STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 25
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingStateService;->a(Landroid/content/Context;Z)V

    goto :goto_10
.end method
