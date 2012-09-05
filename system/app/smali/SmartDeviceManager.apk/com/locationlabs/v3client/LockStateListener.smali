.class public Lcom/locationlabs/v3client/LockStateListener;
.super Landroid/content/BroadcastReceiver;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 18
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 36
    :cond_8
    :goto_8
    return-void

    .line 22
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.sparkle.action.OVERRIDE_PRESSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    const-string v0, "com.locationlabs.extra.FEATURE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    if-nez v0, :cond_23

    .line 28
    const-string v0, "Got ACTION_OVERRIDE FOR  null feature!  Dropping."

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_8

    .line 30
    :cond_23
    const-class v1, Ldg;

    invoke-static {v1, v0}, Ldg;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldg;

    .line 32
    const-string v0, "override"

    invoke-static {p1, p0, v0}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;Ldg;Ljava/lang/String;)V

    goto :goto_8
.end method
