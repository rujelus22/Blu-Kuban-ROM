.class Lcom/sec/android/socialhub/service/SocialHubService$6;
.super Landroid/os/Handler;
.source "SocialHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/SocialHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/service/SocialHubService;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/service/SocialHubService;)V
    .registers 2
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubService$6;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 575
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 579
    :try_start_3
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_6c

    .line 617
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 625
    :cond_b
    :goto_b
    return-void

    .line 582
    :sswitch_c
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$6;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage;

    #calls: Lcom/sec/android/socialhub/service/SocialHubService;->doRemoveAccountAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    invoke-static {v2, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->access$800(Lcom/sec/android/socialhub/service/SocialHubService;Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_b

    .line 621
    :catch_16
    move-exception v0

    .line 623
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 586
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1b
    :try_start_1b
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$6;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage;

    #calls: Lcom/sec/android/socialhub/service/SocialHubService;->doRemoveMessageAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    invoke-static {v2, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->access$900(Lcom/sec/android/socialhub/service/SocialHubService;Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    goto :goto_b

    .line 590
    :sswitch_25
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$6;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage;

    #calls: Lcom/sec/android/socialhub/service/SocialHubService;->doSyncAllAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    invoke-static {v2, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->access$1000(Lcom/sec/android/socialhub/service/SocialHubService;Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    goto :goto_b

    .line 594
    :sswitch_2f
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService$6;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mTaskMgr:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;
    invoke-static {v1}, Lcom/sec/android/socialhub/service/SocialHubService;->access$1100(Lcom/sec/android/socialhub/service/SocialHubService;)Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->checkPossibleSync(Landroid/os/Message;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 596
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$6;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage;

    #calls: Lcom/sec/android/socialhub/service/SocialHubService;->doLocalDBSyncAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    invoke-static {v2, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->access$1200(Lcom/sec/android/socialhub/service/SocialHubService;Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    goto :goto_b

    .line 602
    :sswitch_46
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$6;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage;

    #calls: Lcom/sec/android/socialhub/service/SocialHubService;->doRemoteSyncAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    invoke-static {v2, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->access$1300(Lcom/sec/android/socialhub/service/SocialHubService;Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    goto :goto_b

    .line 606
    :sswitch_50
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$6;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage;

    #calls: Lcom/sec/android/socialhub/service/SocialHubService;->doUpdateMessageAction(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    invoke-static {v2, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->access$1400(Lcom/sec/android/socialhub/service/SocialHubService;Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    goto :goto_b

    .line 613
    :sswitch_5a
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService$6;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mTaskMgr:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;
    invoke-static {v1}, Lcom/sec/android/socialhub/service/SocialHubService;->access$1100(Lcom/sec/android/socialhub/service/SocialHubService;)Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$6;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$300(Lcom/sec/android/socialhub/service/SocialHubService;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->endSync(Landroid/os/Handler;I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_6b} :catch_16

    goto :goto_b

    .line 579
    :sswitch_data_6c
    .sparse-switch
        0x11 -> :sswitch_c
        0x13 -> :sswitch_1b
        0x15 -> :sswitch_25
        0x16 -> :sswitch_46
        0x17 -> :sswitch_2f
        0x18 -> :sswitch_50
        0x22 -> :sswitch_5a
    .end sparse-switch
.end method
