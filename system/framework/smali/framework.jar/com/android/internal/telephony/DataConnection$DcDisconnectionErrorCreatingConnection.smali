.class Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDisconnectionErrorCreatingConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1541
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, -0x1

    .line 1546
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_98

    .line 1592
    :pswitch_6
    const/4 v2, 0x0

    .line 1595
    .local v2, retVal:Z
    :goto_7
    return v2

    .line 1548
    .end local v2           #retVal:Z
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1549
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1550
    .local v1, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget v3, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mTag:I

    if-ne v3, v4, :cond_37

    .line 1552
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v4, "DcDisconnectionErrorCreatingConnection msg.what=EVENT_DEACTIVATE_DONE"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1558
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection;->access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;I)V

    .line 1560
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/DataConnection;->access$4000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1567
    :goto_35
    const/4 v2, 0x1

    .line 1568
    .restart local v2       #retVal:Z
    goto :goto_7

    .line 1563
    .end local v2           #retVal:Z
    :cond_37
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DcDisconnectionErrorCreatingConnection EVENT_DEACTIVATE_DONE stale dp.tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v5, v5, Lcom/android/internal/telephony/DataConnection;->mTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_35

    .line 1573
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    :pswitch_60
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v4, "DcDisconnectingBadDnsState msg.what=EVENT_DISCONNECT - ignored on Disconnecting state"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1574
    const/4 v2, 0x1

    .line 1575
    .restart local v2       #retVal:Z
    goto :goto_7

    .line 1578
    .end local v2           #retVal:Z
    :pswitch_69
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1579
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1580
    .restart local v1       #cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    sget-object v4, Lcom/android/internal/telephony/DataConnection$DataState;->INACTIVE:Lcom/android/internal/telephony/DataConnection$DataState;

    iput-object v4, v3, Lcom/android/internal/telephony/DataConnection;->state:Lcom/android/internal/telephony/DataConnection$DataState;

    .line 1581
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v4, "DcDisconnectingBadDnsState msg.what=EVENT_FORCE_RETRY"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1582
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection;->access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;I)V

    .line 1583
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/DataConnection;->access$4100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1584
    const/4 v2, 0x1

    .line 1585
    .restart local v2       #retVal:Z
    goto/16 :goto_7

    .line 1546
    nop

    :pswitch_data_98
    .packed-switch 0x40003
        :pswitch_8
        :pswitch_60
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_69
    .end packed-switch
.end method