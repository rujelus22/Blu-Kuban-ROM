.class public Lcom/locationlabs/v3client/HeartbeatService;
.super Landroid/app/IntentService;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    const-string v0, "HeartbeatService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.locationlabs.v3client.action.ACTION_UPDATE_HEARTBEAT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/locationlabs/v3client/HeartbeatService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    return-void
.end method

.method static a(Landroid/content/Context;Ldz;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p1, Ldz;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/locationlabs/v3client/ConfigurationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    iget-object v0, p1, Ldz;->a:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/locationlabs/v3client/FeatureService;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 144
    return-void
.end method

.method static b(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 58
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->b()Lcq;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/locationlabs/v3client/RadioSignalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p0}, Lcom/locationlabs/v3client/HeartbeatService;->a(Landroid/content/Context;)V

    .line 59
    :goto_17
    return-void

    .line 58
    :cond_18
    const-string v0, "no account, not starting periodic updates"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    goto :goto_17
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 44
    :cond_6
    :goto_6
    return-void

    .line 41
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_UPDATE_HEARTBEAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lam;->a(J)Lcg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    goto :goto_6
.end method
