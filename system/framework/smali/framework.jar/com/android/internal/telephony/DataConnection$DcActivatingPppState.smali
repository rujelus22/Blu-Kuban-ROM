.class Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActivatingPppState"
.end annotation


# instance fields
.field private mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

.field private mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1299
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1300
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1301
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1299
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcActivatingPppState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1311
    return-void
.end method

.method public exit()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1315
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1316
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 1317
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 1323
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1325
    .local v1, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_ce

    .line 1364
    :pswitch_8
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActivatingPppState not handled msg.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1365
    const/4 v3, 0x0

    .line 1368
    .local v3, retVal:Z
    :goto_23
    return v3

    .line 1327
    .end local v3           #retVal:Z
    :pswitch_24
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcActivatingPppState msg.what=EVENT_DISCONNECT - ignored on ActivatingPpp state"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1328
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/internal/telephony/DataConnection;->access$2500(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V

    .line 1329
    const/4 v3, 0x1

    .line 1330
    .restart local v3       #retVal:Z
    goto :goto_23

    .line 1333
    .end local v3           #retVal:Z
    :pswitch_32
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcActivatingPppState msg.what=EVENT_LINK_STATE_CHANGED"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1336
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/DataConnection;->onLinkStateChanged(Lcom/android/internal/telephony/DataLinkInterface$LinkState;)Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    move-result-object v2

    .line 1338
    .local v2, result:Lcom/android/internal/telephony/DataConnection$LinkStateResult;
    sget-object v4, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$LinkStateResult:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_da

    .line 1357
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unkown LinkStateResult, should not happen"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1340
    :pswitch_5a
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "LINK_UP"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1341
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$2600(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/DataConnection$DcActiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1342
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$2600(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$2700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1360
    :goto_77
    const/4 v3, 0x1

    .line 1361
    .restart local v3       #retVal:Z
    goto :goto_23

    .line 1346
    .end local v3           #retVal:Z
    :pswitch_79
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "LINK_Exited"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1347
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    const/4 v6, -0x1

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;I)V

    .line 1348
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$2800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_77

    .line 1351
    :pswitch_98
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "ERR_BadDns"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1352
    const v4, 0xc3b4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1353
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v5, v5, Lcom/android/internal/telephony/DataConnection;->cid:I

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const v7, 0x40008

    invoke-virtual {v6, v7, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 1354
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$1900(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$2900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_77

    .line 1325
    nop

    :pswitch_data_ce
    .packed-switch 0x40004
        :pswitch_24
        :pswitch_8
        :pswitch_8
        :pswitch_32
    .end packed-switch

    .line 1338
    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_79
        :pswitch_79
        :pswitch_98
    .end packed-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .registers 5
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcActivatingPppState: setEnterNoticationParams cp,cause"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1305
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1306
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingPppState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 1307
    return-void
.end method
