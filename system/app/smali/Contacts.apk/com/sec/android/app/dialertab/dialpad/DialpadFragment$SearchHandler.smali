.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;
.super Landroid/os/Handler;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 1037
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1038
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/16 v7, 0x111

    .line 1041
    const/4 v2, 0x0

    .line 1043
    .local v2, mContact:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$600()Landroid/os/ConditionVariable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 1044
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$600()Landroid/os/ConditionVariable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    .line 1046
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1047
    .local v0, copyMsg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1049
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1051
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_10c

    .line 1107
    :cond_28
    :goto_28
    return-void

    .line 1053
    :pswitch_29
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 1055
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1057
    .local v3, temp:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSearchLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1058
    :try_start_40
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v6, "<++++++++++>Sync"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #calls: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
    invoke-static {v4, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-result-object v2

    .line 1062
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 1063
    if-eqz v2, :cond_9d

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_9d

    .line 1064
    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1065
    const/16 v4, 0x13

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 1066
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 1067
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1068
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1069
    .local v1, data:Landroid/os/Bundle;
    const-string v4, "args"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1071
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v4, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 1072
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z
    invoke-static {v4, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 1097
    .end local v1           #data:Landroid/os/Bundle;
    :goto_90
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_f4

    .line 1098
    monitor-exit v5

    goto :goto_28

    .line 1102
    :catchall_9a
    move-exception v4

    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_40 .. :try_end_9c} :catchall_9a

    throw v4

    .line 1073
    :cond_9d
    if-nez v2, :cond_c0

    :try_start_9f
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_c0

    .line 1074
    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1075
    const/16 v4, 0x12

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 1076
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_counter:I
    invoke-static {v4, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 1077
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->message_flag:Z
    invoke-static {v4, v6}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    goto :goto_90

    .line 1079
    :cond_c0
    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1080
    const/16 v4, 0x14

    iput v4, v0, Landroid/os/Message;->arg1:I

    goto :goto_90

    .line 1083
    :cond_c9
    if-eqz v2, :cond_eb

    .line 1084
    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1085
    const/16 v4, 0x13

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 1086
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->count:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v4

    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 1087
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1088
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1089
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v4, "args"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_90

    .line 1092
    .end local v1           #data:Landroid/os/Bundle;
    :cond_eb
    const/16 v4, 0x70

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1093
    const/16 v4, 0x12

    iput v4, v0, Landroid/os/Message;->arg1:I

    goto :goto_90

    .line 1100
    :cond_f4
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    const/16 v6, 0x111

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1101
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchHandler;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mReceiveHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1102
    monitor-exit v5
    :try_end_109
    .catchall {:try_start_9f .. :try_end_109} :catchall_9a

    goto/16 :goto_28

    .line 1051
    nop

    :pswitch_data_10c
    .packed-switch 0x11
        :pswitch_29
    .end packed-switch
.end method
