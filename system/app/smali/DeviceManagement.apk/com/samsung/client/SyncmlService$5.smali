.class Lcom/samsung/client/SyncmlService$5;
.super Landroid/content/BroadcastReceiver;
.source "SyncmlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/SyncmlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/SyncmlService;


# direct methods
.method constructor <init>(Lcom/samsung/client/SyncmlService;)V
    .registers 2
    .parameter

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/samsung/client/SyncmlService$5;->this$0:Lcom/samsung/client/SyncmlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1338
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1340
    .local v0, action:Ljava/lang/String;
    const-string v2, "SyncmlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUnlockscreenReceiver: action - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const-string v2, "android.intent.action.DUN_PATTERN_LOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1344
    const-string v2, "lockstate"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1345
    .local v1, lockState:Ljava/lang/String;
    const-string v2, "unlocked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1346
    const-string v2, "SyncmlService"

    const-string v3, "***** DUN_PATTERN_LOCK:unlocked *****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v2, p0, Lcom/samsung/client/SyncmlService$5;->this$0:Lcom/samsung/client/SyncmlService;

    #getter for: Lcom/samsung/client/SyncmlService;->mUnlockscreenReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/samsung/client/SyncmlService;->access$1200(Lcom/samsung/client/SyncmlService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1348
    iget-object v2, p0, Lcom/samsung/client/SyncmlService$5;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v2, v2, Lcom/samsung/client/SyncmlService;->delayTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1352
    .end local v1           #lockState:Ljava/lang/String;
    :cond_49
    return-void
.end method
