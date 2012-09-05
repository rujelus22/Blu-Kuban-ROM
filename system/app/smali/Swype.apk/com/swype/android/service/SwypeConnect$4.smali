.class Lcom/swype/android/service/SwypeConnect$4;
.super Ljava/lang/Object;
.source "SwypeConnect.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/service/SwypeConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/service/SwypeConnect;


# direct methods
.method constructor <init>(Lcom/swype/android/service/SwypeConnect;)V
    .registers 2
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/swype/android/service/SwypeConnect$4;->this$0:Lcom/swype/android/service/SwypeConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 613
    if-nez p2, :cond_9

    .line 614
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect$4;->this$0:Lcom/swype/android/service/SwypeConnect;

    #setter for: Lcom/swype/android/service/SwypeConnect;->mConnectBound:Z
    invoke-static {v0, v2}, Lcom/swype/android/service/SwypeConnect;->access$102(Lcom/swype/android/service/SwypeConnect;Z)Z

    .line 628
    :goto_8
    return-void

    .line 619
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect$4;->this$0:Lcom/swype/android/service/SwypeConnect;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/swype/android/service/SwypeConnect;->mSendMessenger:Landroid/os/Messenger;
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_12} :catch_1f

    .line 625
    :goto_12
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect$4;->this$0:Lcom/swype/android/service/SwypeConnect;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(I)Z

    .line 627
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect$4;->this$0:Lcom/swype/android/service/SwypeConnect;

    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect;->processQueuedMessages()V

    goto :goto_8

    .line 621
    :catch_1f
    move-exception v0

    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect$4;->this$0:Lcom/swype/android/service/SwypeConnect;

    #setter for: Lcom/swype/android/service/SwypeConnect;->mConnectBound:Z
    invoke-static {v0, v2}, Lcom/swype/android/service/SwypeConnect;->access$102(Lcom/swype/android/service/SwypeConnect;Z)Z

    goto :goto_12
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .parameter

    .prologue
    .line 633
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect$4;->this$0:Lcom/swype/android/service/SwypeConnect;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/swype/android/service/SwypeConnect;->mSendMessenger:Landroid/os/Messenger;

    .line 634
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect$4;->this$0:Lcom/swype/android/service/SwypeConnect;

    const/4 v1, 0x0

    #setter for: Lcom/swype/android/service/SwypeConnect;->mConnectBound:Z
    invoke-static {v0, v1}, Lcom/swype/android/service/SwypeConnect;->access$102(Lcom/swype/android/service/SwypeConnect;Z)Z

    .line 637
    new-instance v0, Lcom/swype/android/service/SwypeConnect$4$1;

    invoke-direct {v0, p0}, Lcom/swype/android/service/SwypeConnect$4$1;-><init>(Lcom/swype/android/service/SwypeConnect$4;)V

    .line 644
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect$4;->this$0:Lcom/swype/android/service/SwypeConnect;

    iget-object v1, v1, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 645
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 646
    return-void
.end method
