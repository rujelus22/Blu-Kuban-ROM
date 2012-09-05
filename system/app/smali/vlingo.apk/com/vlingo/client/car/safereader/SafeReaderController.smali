.class public Lcom/vlingo/client/car/safereader/SafeReaderController;
.super Ljava/lang/Object;
.source "SafeReaderController.java"

# interfaces
.implements Lcom/vlingo/client/car/TaskController;
.implements Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$SafeReaderMainScreenListener;
.implements Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;


# instance fields
.field protected delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/vlingo/client/car/safereader/SafeReaderController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 43
    return-void
.end method

.method public static getController(Lcom/vlingo/client/car/CarActivityDelegate;)Lcom/vlingo/client/car/safereader/SafeReaderController;
    .registers 2
    .parameter "delegate"

    .prologue
    .line 46
    new-instance v0, Lcom/vlingo/client/car/safereader/SamsungMessageController;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/safereader/SamsungMessageController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    return-object v0
.end method

.method public static startSafeReaderHomeTask(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/vlingo/client/car/safereader/SafeReaderController;->getController(Lcom/vlingo/client/car/CarActivityDelegate;)Lcom/vlingo/client/car/safereader/SafeReaderController;

    move-result-object v0

    .line 51
    .local v0, controller:Lcom/vlingo/client/car/safereader/SafeReaderController;
    invoke-virtual {v0}, Lcom/vlingo/client/car/safereader/SafeReaderController;->startSafeReaderHome()V

    .line 52
    return-void
.end method

.method public static startSafeReaderMessageViewTask(Lcom/vlingo/client/car/CarActivityDelegate;Lcom/vlingo/client/safereader/MessageContext;)V
    .registers 4
    .parameter "delegate"
    .parameter "mc"

    .prologue
    .line 55
    invoke-interface {p0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/samsung/DrivingModeUtil;->isDrivingModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 59
    :goto_a
    return-void

    .line 57
    :cond_b
    invoke-static {p0}, Lcom/vlingo/client/car/safereader/SafeReaderController;->getController(Lcom/vlingo/client/car/CarActivityDelegate;)Lcom/vlingo/client/car/safereader/SafeReaderController;

    move-result-object v0

    .line 58
    .local v0, controller:Lcom/vlingo/client/car/safereader/SafeReaderController;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/car/safereader/SafeReaderController;->startSafeReaderMessageView(Lcom/vlingo/client/safereader/MessageContext;)V

    goto :goto_a
.end method


# virtual methods
.method public getCommandForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 3
    .parameter "item"

    .prologue
    .line 79
    const-string v0, "safereader"

    return-object v0
.end method

.method public getFieldIDForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 3
    .parameter "item"

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 105
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_main_safereader"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskIconResourceID()I
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090218

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/vlingo/client/car/TaskController$TaskType;
    .registers 2

    .prologue
    .line 95
    sget-object v0, Lcom/vlingo/client/car/TaskController$TaskType;->TypeSafeReader:Lcom/vlingo/client/car/TaskController$TaskType;

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public onDial(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "address"

    .prologue
    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, dialIntent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/samsung/PhoneUtil;->turnOnSpeakerphoneIfRequired(Landroid/content/Context;)V

    .line 144
    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 145
    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->taskFinished()V

    .line 146
    return-void
.end method

.method public onFinalize(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 99
    return-void
.end method

.method public onInitialize(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 102
    return-void
.end method

.method public onReply(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "name"
    .parameter "address"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->taskCleanup()V

    .line 132
    new-instance v0, Lcom/vlingo/client/car/sms/SMSController;

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-direct {v0, v1}, Lcom/vlingo/client/car/sms/SMSController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 133
    .local v0, controller:Lcom/vlingo/client/car/sms/SMSController;
    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/car/sms/SMSController;->startSMSFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method public onSkip()V
    .registers 2

    .prologue
    .line 149
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->skipCurrentlyPlayingItem()V

    .line 150
    return-void
.end method

.method protected startSafeReaderHome()V
    .registers 5

    .prologue
    .line 62
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030044

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;

    .line 63
    .local v0, view:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;
    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->initialize(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$SafeReaderMainScreenListener;)V

    .line 64
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 65
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "car-safereader-home"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method protected startSafeReaderMessageView(Lcom/vlingo/client/safereader/MessageContext;)V
    .registers 10
    .parameter "mc"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/vlingo/client/safereader/MessageContext;->getType()Lcom/vlingo/client/safereader/MessageContext$MessageType;

    move-result-object v6

    sget-object v7, Lcom/vlingo/client/safereader/MessageContext$MessageType;->MMS:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    if-ne v6, v7, :cond_45

    move v5, v1

    .line 70
    .local v5, isMMS:Z
    :goto_b
    const-string v6, "car_safereader_read_message"

    invoke-static {v6, v3}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_47

    move v4, v1

    .line 71
    .local v4, hiddenBody:Z
    :goto_14
    if-eqz v5, :cond_49

    invoke-virtual {p1}, Lcom/vlingo/client/safereader/MessageContext;->getSubject()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, message:Ljava/lang/String;
    :goto_1a
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f030045

    const/4 v6, 0x0

    invoke-static {v1, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;

    .line 73
    .local v0, view:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;
    invoke-virtual {p1}, Lcom/vlingo/client/safereader/MessageContext;->getSenderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vlingo/client/safereader/MessageContext;->getSenderAddress()Ljava/lang/String;

    move-result-object v3

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;)V

    .line 74
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 75
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v3, "car-safereader-message"

    invoke-virtual {v1, v3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 76
    return-void

    .end local v0           #view:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;
    .end local v2           #message:Ljava/lang/String;
    .end local v4           #hiddenBody:Z
    .end local v5           #isMMS:Z
    :cond_45
    move v5, v3

    .line 69
    goto :goto_b

    .restart local v5       #isMMS:Z
    :cond_47
    move v4, v3

    .line 70
    goto :goto_14

    .line 71
    .restart local v4       #hiddenBody:Z
    :cond_49
    invoke-virtual {p1}, Lcom/vlingo/client/safereader/MessageContext;->getBody()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a
.end method
