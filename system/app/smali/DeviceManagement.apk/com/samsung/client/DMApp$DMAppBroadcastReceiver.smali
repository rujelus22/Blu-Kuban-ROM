.class Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DMApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DMApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DMApp;


# direct methods
.method private constructor <init>(Lcom/samsung/client/DMApp;)V
    .registers 2
    .parameter

    .prologue
    .line 2345
    iput-object p1, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2345
    invoke-direct {p0, p1}, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;-><init>(Lcom/samsung/client/DMApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 2348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2350
    .local v0, action:Ljava/lang/String;
    const-string v4, "DMApp"

    const-string v5, "DMAppBroadcastReceiver::onReceive enter ..... "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_128

    .line 2354
    const-string v4, "DMApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2356
    .local v3, state:Ljava/lang/String;
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2358
    .local v2, reason:Ljava/lang/String;
    const-string v4, "DMApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DM App Phone.STATE_KEY - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    const-string v4, "DMApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DM App Phone.STATE_CHANGE_REASON - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    const-string v4, "DMApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRegistered - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->isRegistered:Z
    invoke-static {v6}, Lcom/samsung/client/DMApp;->access$3900(Lcom/samsung/client/DMApp;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    if-eqz v3, :cond_128

    const-string v4, "DISCONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_128

    .line 2364
    iget-object v4, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->isRegistered:Z
    invoke-static {v4}, Lcom/samsung/client/DMApp;->access$3900(Lcom/samsung/client/DMApp;)Z

    move-result v4

    if-ne v4, v7, :cond_128

    .line 2367
    :try_start_98
    iget-object v4, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/samsung/client/DMApp;->access$4000(Lcom/samsung/client/DMApp;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2368
    const-string v4, "DMApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRegistered - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->isRegistered:Z
    invoke-static {v6}, Lcom/samsung/client/DMApp;->access$3900(Lcom/samsung/client/DMApp;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    const-string v4, "DMApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download interrupted - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->downloadInProgress:Z
    invoke-static {v6}, Lcom/samsung/client/DMApp;->access$1200(Lcom/samsung/client/DMApp;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    iget-object v4, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->downloadInProgress:Z
    invoke-static {v4}, Lcom/samsung/client/DMApp;->access$1200(Lcom/samsung/client/DMApp;)Z

    move-result v4

    if-eqz v4, :cond_107

    .line 2373
    const-string v4, "DMApp"

    const-string v5, "CLEAN UP FUMO"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    iget-object v4, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    iget-object v4, v4, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    iget-object v5, v5, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2376
    iget-object v4, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    const/4 v5, 0x0

    #setter for: Lcom/samsung/client/DMApp;->downloadInProgress:Z
    invoke-static {v4, v5}, Lcom/samsung/client/DMApp;->access$1202(Lcom/samsung/client/DMApp;Z)Z

    .line 2378
    :cond_107
    iget-object v4, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    const/4 v5, 0x1

    #setter for: Lcom/samsung/client/DMApp;->mStartCntrRunning:Z
    invoke-static {v4, v5}, Lcom/samsung/client/DMApp;->access$4102(Lcom/samsung/client/DMApp;Z)Z

    .line 2379
    iget-object v4, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    iget-object v4, v4, Lcom/samsung/client/DMApp;->delayStart:Landroid/os/CountDownTimer;

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2380
    const-string v4, "DMApp"

    const-string v5, "hangedTimer.cancel()..... "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    iget-object v4, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    iget-object v4, v4, Lcom/samsung/client/DMApp;->hangedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    .line 2383
    iget-object v4, p0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;->this$0:Lcom/samsung/client/DMApp;

    const/4 v5, 0x0

    #setter for: Lcom/samsung/client/DMApp;->isRegistered:Z
    invoke-static {v4, v5}, Lcom/samsung/client/DMApp;->access$3902(Lcom/samsung/client/DMApp;Z)Z
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_128} :catch_129

    .line 2390
    .end local v2           #reason:Ljava/lang/String;
    .end local v3           #state:Ljava/lang/String;
    :cond_128
    :goto_128
    return-void

    .line 2384
    .restart local v2       #reason:Ljava/lang/String;
    .restart local v3       #state:Ljava/lang/String;
    :catch_129
    move-exception v1

    .line 2385
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DMApp"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_128
.end method
