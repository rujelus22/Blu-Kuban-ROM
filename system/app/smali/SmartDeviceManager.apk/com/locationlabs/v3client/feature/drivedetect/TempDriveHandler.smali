.class public Lcom/locationlabs/v3client/feature/drivedetect/TempDriveHandler;
.super Landroid/content/BroadcastReceiver;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "com.locationlabs.v3client.action.DRIVING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 25
    invoke-static {p1}, Lcom/locationlabs/v3client/LockScreenService;->b(Landroid/content/Context;)V

    .line 31
    :cond_f
    :goto_f
    return-void

    .line 27
    :cond_10
    const-string v1, "com.locationlabs.v3client.action.STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 29
    invoke-static {p1}, Lcom/locationlabs/v3client/LockScreenService;->c(Landroid/content/Context;)V

    goto :goto_f
.end method
