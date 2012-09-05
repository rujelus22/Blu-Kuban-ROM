.class Lcom/android/internal/telephony/DataConnection$DcDefaultState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x40005

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 873
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 877
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 22
    .parameter "msg"

    .prologue
    .line 882
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_36e

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState: shouldn\'t happen but ignore msg.what=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1052
    :goto_29
    const/4 v2, 0x1

    return v2

    .line 884
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    if-eqz v2, :cond_43

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x11002

    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_29

    .line 889
    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x11002

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mId:I
    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection;->access$000(Lcom/android/internal/telephony/DataConnection;)I

    move-result v6

    const-string v7, "hi"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V

    goto :goto_29

    .line 899
    :sswitch_7e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_29

    .line 904
    :sswitch_88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    goto :goto_29

    .line 908
    :sswitch_90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/util/IState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection;->access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v3

    if-ne v2, v3, :cond_b7

    const/16 v19, 0x1

    .line 910
    .local v19, val:Z
    :goto_a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v3, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x41001

    if-eqz v19, :cond_ba

    const/4 v2, 0x1

    :goto_b0
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_29

    .line 908
    .end local v19           #val:Z
    :cond_b7
    const/16 v19, 0x0

    goto :goto_a4

    .line 910
    .restart local v19       #val:Z
    :cond_ba
    const/4 v2, 0x0

    goto :goto_b0

    .line 915
    .end local v19           #val:Z
    :sswitch_bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x41003

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->cid:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_29

    .line 920
    :sswitch_d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x41005

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_29

    .line 924
    :sswitch_e8
    const/4 v2, 0x2

    new-array v11, v2, [Ljava/lang/String;

    .line 925
    .local v11, dnsServers:[Ljava/lang/String;
    new-instance v15, Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v15, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 927
    .local v15, lp:Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x41007

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v15}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    .line 929
    const-string/jumbo v2, "net.cdma.ppp.interface"

    const-string/jumbo v3, "ppp0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 930
    .local v13, interfaceName:Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 932
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dns1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    .line 933
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dns2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    .line 934
    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 935
    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto/16 :goto_29

    .line 940
    .end local v11           #dnsServers:[Ljava/lang/String;
    .end local v13           #interfaceName:Ljava/lang/String;
    .end local v15           #lp:Landroid/net/LinkProperties;
    :sswitch_175
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/net/ProxyProperties;

    .line 942
    .local v17, proxy:Landroid/net/ProxyProperties;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x41009

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    goto/16 :goto_29

    .line 947
    .end local v17           #proxy:Landroid/net/ProxyProperties;
    :sswitch_198
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/telephony/DataCallState;

    .line 948
    .local v16, newState:Lcom/android/internal/telephony/DataCallState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    move-object/from16 v0, v16

    #calls: Lcom/android/internal/telephony/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    invoke-static {v2, v0}, Lcom/android/internal/telephony/DataConnection;->access$300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v18

    .line 954
    .local v18, result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x4100d

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_29

    .line 960
    .end local v16           #newState:Lcom/android/internal/telephony/DataCallState;
    .end local v18           #result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    :sswitch_1bc
    new-instance v14, Landroid/net/LinkCapabilities;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v14, v2}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    .line 962
    .local v14, lc:Landroid/net/LinkCapabilities;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x4100b

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v14}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_29

    .line 967
    .end local v14           #lc:Landroid/net/LinkCapabilities;
    :sswitch_1d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x4100f

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection;->access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/DataConnection;->access$400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_29

    .line 972
    :sswitch_1f6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x41011

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefCount:I
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$500(Lcom/android/internal/telephony/DataConnection;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_29

    .line 976
    :sswitch_20e
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/ApnContext;

    .line 978
    .local v8, apnContext:Lcom/android/internal/telephony/ApnContext;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/telephony/DataConnection;->access$600(Lcom/android/internal/telephony/DataConnection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22d

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/telephony/DataConnection;->access$600(Lcom/android/internal/telephony/DataConnection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    :cond_22d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x41013

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    goto/16 :goto_29

    .line 985
    .end local v8           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :sswitch_23d
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/ApnContext;

    .line 987
    .restart local v8       #apnContext:Lcom/android/internal/telephony/ApnContext;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/telephony/DataConnection;->access$600(Lcom/android/internal/telephony/DataConnection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x41015

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    goto/16 :goto_29

    .line 993
    .end local v8           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :sswitch_25e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x41017

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$600(Lcom/android/internal/telephony/DataConnection;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_29

    .line 998
    :sswitch_27b
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/app/PendingIntent;

    .line 1000
    .local v12, intent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iput-object v12, v2, Lcom/android/internal/telephony/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x41019

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    goto/16 :goto_29

    .line 1006
    .end local v12           #intent:Landroid/app/PendingIntent;
    :sswitch_297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x4101b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_29

    .line 1011
    :sswitch_2ad
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v3, "DcDefaultState: msg.what=EVENT_CONNECT, fail not expected"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1012
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1013
    .local v10, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    invoke-static {v2, v10, v3}, Lcom/android/internal/telephony/DataConnection;->access$700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto/16 :goto_29

    .line 1018
    .end local v10           #cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    :sswitch_2c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState deferring msg.what=EVENT_DISCONNECT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefCount:I
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$500(Lcom/android/internal/telephony/DataConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    move-object/from16 v0, p1

    #calls: Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/DataConnection;->access$800(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V

    goto/16 :goto_29

    .line 1025
    :sswitch_2f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState deferring msg.what=EVENT_DISCONNECT_ALL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefCount:I
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$500(Lcom/android/internal/telephony/DataConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    move-object/from16 v0, p1

    #calls: Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/DataConnection;->access$900(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V

    goto/16 :goto_29

    .line 1031
    :sswitch_321
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1032
    .local v9, ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_35b

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState: msg.what=EVENT_RIL_CONNECTED mRilVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_29

    .line 1039
    :cond_35b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v3, "Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    goto/16 :goto_29

    .line 882
    nop

    :sswitch_data_36e
    .sparse-switch
        0x11001 -> :sswitch_2b
        0x11003 -> :sswitch_7e
        0x11004 -> :sswitch_88
        0x40000 -> :sswitch_2ad
        0x40004 -> :sswitch_2c7
        0x40005 -> :sswitch_321
        0x40006 -> :sswitch_2f4
        0x41000 -> :sswitch_90
        0x41002 -> :sswitch_bc
        0x41004 -> :sswitch_d2
        0x41006 -> :sswitch_e8
        0x41008 -> :sswitch_175
        0x4100a -> :sswitch_1bc
        0x4100c -> :sswitch_198
        0x4100e -> :sswitch_1d7
        0x41010 -> :sswitch_1f6
        0x41012 -> :sswitch_20e
        0x41014 -> :sswitch_23d
        0x41016 -> :sswitch_25e
        0x41018 -> :sswitch_27b
        0x4101a -> :sswitch_297
    .end sparse-switch
.end method
