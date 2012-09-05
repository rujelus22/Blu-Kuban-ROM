.class public Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;
.super Ljava/lang/Object;
.source "CarReplyHandler.java"

# interfaces
.implements Lcom/vlingo/client/car/vvs/CarVVSActionHandler;


# instance fields
.field public final delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;Lcom/vlingo/client/safereader/MessageContext;Lcom/vlingo/client/core/vlservice/response/Action;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->handleNewMessageContext(Lcom/vlingo/client/safereader/MessageContext;Lcom/vlingo/client/core/vlservice/response/Action;)V

    return-void
.end method

.method private handleNewMessageContext(Lcom/vlingo/client/safereader/MessageContext;Lcom/vlingo/client/core/vlservice/response/Action;)V
    .registers 18
    .parameter "ctx"
    .parameter "action"

    .prologue
    .line 67
    iget-object v6, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v6}, Lcom/vlingo/client/car/CarActivityDelegate;->getCurrentTaskController()Lcom/vlingo/client/car/TaskController;

    move-result-object v12

    .line 68
    .local v12, controller:Lcom/vlingo/client/car/TaskController;
    if-nez v12, :cond_36

    .line 69
    iget-object v6, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v6}, Lcom/vlingo/client/car/CarActivityDelegate;->taskCleanup()V

    .line 70
    new-instance v1, Lcom/vlingo/client/car/sms/SMSController;

    iget-object v6, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-direct {v1, v6}, Lcom/vlingo/client/car/sms/SMSController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 71
    .local v1, smsController:Lcom/vlingo/client/car/sms/SMSController;
    move-object v12, v1

    .line 83
    :goto_15
    const-string v6, "Message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, message:Ljava/lang/String;
    if-eqz p1, :cond_4b

    invoke-virtual/range {p1 .. p1}, Lcom/vlingo/client/safereader/MessageContext;->getType()Lcom/vlingo/client/safereader/MessageContext$MessageType;

    move-result-object v6

    sget-object v7, Lcom/vlingo/client/safereader/MessageContext$MessageType;->SMS:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    if-ne v6, v7, :cond_4b

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/vlingo/client/safereader/MessageContext;->getSenderName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, contact:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/vlingo/client/safereader/MessageContext;->getSenderAddress()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, address:Ljava/lang/String;
    const-string v4, "mobile"

    .line 89
    .local v4, type:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/vlingo/client/car/sms/SMSController;->startSMSFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    .end local v3           #address:Ljava/lang/String;
    :goto_35
    return-void

    .line 73
    .end local v1           #smsController:Lcom/vlingo/client/car/sms/SMSController;
    .end local v2           #contact:Ljava/lang/String;
    .end local v4           #type:Ljava/lang/String;
    .end local v5           #message:Ljava/lang/String;
    :cond_36
    invoke-interface {v12}, Lcom/vlingo/client/car/TaskController;->getType()Lcom/vlingo/client/car/TaskController$TaskType;

    move-result-object v6

    sget-object v7, Lcom/vlingo/client/car/TaskController$TaskType;->TypeSMS:Lcom/vlingo/client/car/TaskController$TaskType;

    if-ne v6, v7, :cond_42

    move-object v1, v12

    .line 75
    check-cast v1, Lcom/vlingo/client/car/sms/SMSController;

    .restart local v1       #smsController:Lcom/vlingo/client/car/sms/SMSController;
    goto :goto_15

    .line 79
    .end local v1           #smsController:Lcom/vlingo/client/car/sms/SMSController;
    :cond_42
    new-instance v1, Lcom/vlingo/client/car/sms/SMSController;

    iget-object v6, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-direct {v1, v6}, Lcom/vlingo/client/car/sms/SMSController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 80
    .restart local v1       #smsController:Lcom/vlingo/client/car/sms/SMSController;
    move-object v12, v1

    goto :goto_15

    .line 91
    .restart local v5       #message:Ljava/lang/String;
    :cond_4b
    const-string v6, "To"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .restart local v2       #contact:Ljava/lang/String;
    const-string v6, "PhoneType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .restart local v4       #type:Ljava/lang/String;
    invoke-static {v2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 94
    iget-object v6, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v6}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/vlingo/client/util/SMSUtil;->getMostRecentMessageFromInbox(Landroid/content/Context;)Lcom/vlingo/client/util/SMSUtil$TextMessage;

    move-result-object v14

    .line 95
    .local v14, lastMessage:Lcom/vlingo/client/util/SMSUtil$TextMessage;
    if-nez v14, :cond_86

    .line 96
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09007a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, errorTTS:Ljava/lang/String;
    iget-object v6, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v13}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_35

    .line 100
    .end local v13           #errorTTS:Ljava/lang/String;
    :cond_86
    iget-object v2, v14, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    .line 101
    iget-object v3, v14, Lcom/vlingo/client/util/SMSUtil$TextMessage;->address:Ljava/lang/String;

    .line 102
    .restart local v3       #address:Ljava/lang/String;
    const-string v9, "mobile"

    const/4 v11, 0x0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v10, v5

    invoke-virtual/range {v6 .. v11}, Lcom/vlingo/client/car/sms/SMSController;->startSMSFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_35

    .line 106
    .end local v3           #address:Ljava/lang/String;
    .end local v14           #lastMessage:Lcom/vlingo/client/util/SMSUtil$TextMessage;
    :cond_95
    invoke-virtual {v1, v2, v4, v5}, Lcom/vlingo/client/car/sms/SMSController;->startSMSFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 4
    .parameter "action"
    .parameter "dispacher"

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 7
    .parameter "action"

    .prologue
    const/4 v4, 0x1

    .line 42
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v2

    const-string v3, "car-reco-reply"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getCurrentTaskItem()Lcom/vlingo/client/car/CarScrollableItem;

    move-result-object v0

    .line 45
    .local v0, item:Lcom/vlingo/client/car/CarScrollableItem;
    instance-of v2, v0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;

    if-eqz v2, :cond_28

    .line 46
    iget-object v2, p0, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->taskCleanup()V

    move-object v1, v0

    .line 47
    check-cast v1, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;

    .line 48
    .local v1, readbackItem:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;
    invoke-virtual {v1}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->getMessageObj()Lcom/vlingo/client/util/SMSUtil$TextMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/util/SMSUtil$TextMessage;->convertToMessageContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;->handleNewMessageContext(Lcom/vlingo/client/safereader/MessageContext;Lcom/vlingo/client/core/vlservice/response/Action;)V

    .line 61
    .end local v1           #readbackItem:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;
    :goto_27
    return v4

    .line 52
    :cond_28
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v2

    new-instance v3, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;

    invoke-direct {v3, p0, p1}, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler$1;-><init>(Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;Lcom/vlingo/client/core/vlservice/response/Action;)V

    invoke-virtual {v2, v3}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getCurrentMessageContext(Lcom/vlingo/client/safereader/SafeReaderAPI$MessageContextReceiver;)V

    goto :goto_27
.end method
