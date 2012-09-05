.class Lcom/syncmldstmo/smlBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "smlBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/smlBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smlBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlBroadcastReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter

    .prologue
    const/high16 v6, 0x1000

    const/4 v5, 0x0

    const/16 v4, 0x40

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    const-string v0, "SERVICE INIT FINISHED"

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_f0

    .line 123
    :cond_11
    :goto_11
    return-void

    .line 51
    :pswitch_12
    const-string v0, "LOADED"

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    #getter for: Lcom/syncmldstmo/smlBroadcastReceiver;->szSimState:Ljava/lang/String;
    invoke-static {v1}, Lcom/syncmldstmo/smlBroadcastReceiver;->access$000(Lcom/syncmldstmo/smlBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 53
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlCheckSIMInfo()V

    goto :goto_11

    .line 55
    :cond_24
    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    #getter for: Lcom/syncmldstmo/smlBroadcastReceiver;->szSimState:Ljava/lang/String;
    invoke-static {v1}, Lcom/syncmldstmo/smlBroadcastReceiver;->access$000(Lcom/syncmldstmo/smlBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 57
    const-string v0, "SIM_ABSENT"

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 58
    invoke-static {v2}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetExistSIMforRetry(Z)V

    goto :goto_11

    .line 63
    :pswitch_3b
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    #getter for: Lcom/syncmldstmo/smlBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/syncmldstmo/smlBroadcastReceiver;->access$100(Lcom/syncmldstmo/smlBroadcastReceiver;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/syncmldstmo/smlBroadcastReceiver;->smlSetCPInfo(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/syncmldstmo/smlBroadcastReceiver;->access$200(Lcom/syncmldstmo/smlBroadcastReceiver;Landroid/content/Context;)V

    goto :goto_11

    .line 67
    :pswitch_47
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    #calls: Lcom/syncmldstmo/smlBroadcastReceiver;->smlUpdateSync(I)V
    invoke-static {v0, v2}, Lcom/syncmldstmo/smlBroadcastReceiver;->access$300(Lcom/syncmldstmo/smlBroadcastReceiver;I)V

    goto :goto_11

    .line 71
    :pswitch_4d
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    #calls: Lcom/syncmldstmo/smlBroadcastReceiver;->smlUpdateSync(I)V
    invoke-static {v0, v3}, Lcom/syncmldstmo/smlBroadcastReceiver;->access$300(Lcom/syncmldstmo/smlBroadcastReceiver;I)V

    goto :goto_11

    .line 75
    :pswitch_53
    new-instance v0, Lcom/syncmldstmo/push/smlPushMessageAdapter;

    invoke-direct {v0}, Lcom/syncmldstmo/push/smlPushMessageAdapter;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    #getter for: Lcom/syncmldstmo/smlBroadcastReceiver;->bTmpInbox:[B
    invoke-static {v1}, Lcom/syncmldstmo/smlBroadcastReceiver;->access$400(Lcom/syncmldstmo/smlBroadcastReceiver;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    #getter for: Lcom/syncmldstmo/smlBroadcastReceiver;->bTmpInbox:[B
    invoke-static {v2}, Lcom/syncmldstmo/smlBroadcastReceiver;->access$400(Lcom/syncmldstmo/smlBroadcastReceiver;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/syncmldstmo/push/smlPushMessageAdapter;->smlPushAdpReceiveMsg([BILjava/lang/String;)Z

    goto :goto_11

    .line 80
    :pswitch_69
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetAutoSyncReady()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 81
    invoke-static {v2}, Lcom/syncmldstmo/DSService;->smlSetAutoSyncReady(Z)V

    .line 83
    :cond_72
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getSyncStart()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 85
    sget-object v0, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11

    .line 89
    :cond_80
    invoke-static {v3}, Lcom/syncmldstmo/DSService;->setGetFriendSyncing(Z)V

    .line 90
    invoke-static {v3, v2}, Lcom/syncmldstmo/DSService;->smlSetPreSync(ZI)V

    .line 92
    const-string v0, "FRIENDS SYNC START"

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetrySyncReset()V

    .line 98
    invoke-static {}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlGetRomingState()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 100
    const-string v0, "Roming true..."

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 101
    invoke-static {v3}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetRoamingUI(Z)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    #getter for: Lcom/syncmldstmo/smlBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/syncmldstmo/smlBroadcastReceiver;->access$100(Lcom/syncmldstmo/smlBroadcastReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/syncmldstmo/smlCheckRoaming;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    #getter for: Lcom/syncmldstmo/smlBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/syncmldstmo/smlBroadcastReceiver;->access$100(Lcom/syncmldstmo/smlBroadcastReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 109
    :cond_bc
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {v3}, Lcom/syncmldstmo/base/smlAgent;->setSyncStart(Z)V

    .line 111
    const/16 v1, 0x20

    invoke-static {v1, v5, v5}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    #getter for: Lcom/syncmldstmo/smlBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/syncmldstmo/smlBroadcastReceiver;->access$100(Lcom/syncmldstmo/smlBroadcastReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/syncmldstmo/smluiStartSync;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver$1;->this$0:Lcom/syncmldstmo/smlBroadcastReceiver;

    #getter for: Lcom/syncmldstmo/smlBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/syncmldstmo/smlBroadcastReceiver;->access$100(Lcom/syncmldstmo/smlBroadcastReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 119
    :pswitch_e4
    sput-boolean v2, Lcom/syncmldstmo/smlSyncSimContactImport;->bIsSimContactImport:Z

    .line 120
    sget-object v0, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_11

    .line 48
    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_3b
        :pswitch_47
        :pswitch_4d
        :pswitch_53
        :pswitch_69
        :pswitch_e4
    .end packed-switch
.end method
