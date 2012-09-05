.class public Lcom/vlingo/client/car/voicedial/VDController;
.super Ljava/lang/Object;
.source "VDController.java"

# interfaces
.implements Lcom/vlingo/client/car/TaskController;
.implements Lcom/vlingo/client/car/asr/RecoResponder;
.implements Lcom/vlingo/client/core/contacts/ContactsMatcherListener;
.implements Lcom/vlingo/client/car/voicedial/AutoDialContact$AutoDialContactActionListener;
.implements Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;
.implements Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;
.implements Lcom/vlingo/client/car/voicedial/CallingView$VDCallingActionListener;
.implements Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;
.implements Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;


# instance fields
.field protected autodialRunning:Z

.field protected contact:Ljava/lang/String;

.field protected final contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

.field protected final delegate:Lcom/vlingo/client/car/CarActivityDelegate;

.field private dialIntent:Landroid/content/Intent;

.field private dialTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 7
    .parameter "delegate"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v3, p0, Lcom/vlingo/client/car/voicedial/VDController;->autodialRunning:Z

    .line 69
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 71
    new-instance v0, Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-interface {p1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/vlingo/client/contacts/VLContactsMatcher;-><init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/VDController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    .line 72
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VDController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    const-string v1, "call"

    invoke-virtual {v0, v1, v4, v4}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->initialize(Ljava/lang/String;[I[I)V

    .line 74
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VDController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->setSkipBestMatch(Z)V

    .line 75
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/VDController;->setupAutoDial()V

    .line 76
    return-void
.end method

.method private onTTSFinished(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "demand"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VDController;->dialTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 490
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/VDController;->removeTTSListener()V

    .line 493
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->onAppStateChanged(Z)V

    .line 495
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/samsung/PhoneUtil;->turnOnSpeakerphoneIfRequired(Landroid/content/Context;)V

    .line 496
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VDController;->dialIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/VDController;->dialIntent:Landroid/content/Intent;

    .line 498
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->taskFinished()V

    .line 500
    :cond_2b
    return-void
.end method

.method private removeTTSListener()V
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VDController;->dialTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v0, :cond_10

    .line 504
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/VDController;->dialTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 507
    :cond_10
    return-void
.end method

.method private sendAcceptedText(Ljava/lang/String;)V
    .registers 6
    .parameter "acceptedName"

    .prologue
    .line 400
    const-string v0, "dial:def"

    .line 401
    .local v0, acceptedType:Ljava/lang/String;
    new-instance v1, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;

    invoke-direct {v1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;-><init>()V

    .line 402
    .local v1, collection:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .local v2, text:Ljava/lang/StringBuffer;
    const-string v3, "<AcceptedText pt=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    const-string v3, "<Tag u=\"contact\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    const-string v3, "</Tag>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    const-string v3, "</AcceptedText>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->setAcceptedText(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->sendStatsToServer(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V

    .line 412
    return-void
.end method

.method private setupAutoDial()V
    .registers 5

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, autoDialType:I
    const-string v2, "auto_dial"

    const-string v3, "confident"

    invoke-static {v2, v3}, Lcom/vlingo/client/settings/Settings;->getEnum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, autodial:Ljava/lang/String;
    const-string v2, "always"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 464
    const/4 v0, 0x2

    .line 470
    :cond_12
    :goto_12
    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/VDController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v2, v0}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->setAutoActionType(I)V

    .line 471
    return-void

    .line 465
    :cond_18
    const-string v2, "confident"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 466
    const/4 v0, 0x1

    goto :goto_12
.end method


# virtual methods
.method protected dialDisplayItem(Lcom/vlingo/client/core/contacts/DisplayItem;ZZLjava/lang/Integer;)V
    .registers 15
    .parameter "itemToCall"
    .parameter "notify"
    .parameter "isAutoDial"
    .parameter "index"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 415
    if-eqz p2, :cond_17

    .line 416
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VDController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    iget-object v5, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->notifyContactUsed(ILjava/lang/String;)V

    .line 418
    :cond_17
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v4

    const-string v5, "car-voicedial"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageAction(Ljava/lang/String;Ljava/util/Vector;Z)V

    .line 420
    const/4 v1, 0x0

    .line 421
    .local v1, callingConfirmString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 423
    .local v0, callingConfirmDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    iget-object v4, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v4

    if-le v4, v8, :cond_ad

    .line 424
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v5

    invoke-static {v4, v5, p4}, Lcom/vlingo/client/util/ContactUtil;->getLocalizedTypeString(Landroid/content/Context;ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, type:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090235

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v7}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v2, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .end local v2           #type:Ljava/lang/String;
    :goto_57
    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    .line 431
    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/VDController;->dialTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 432
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 433
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, url:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/vlingo/client/car/voicedial/VDController;->dialIntent:Landroid/content/Intent;

    .line 436
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VDController;->dialIntent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 437
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VDController;->dialIntent:Landroid/content/Intent;

    const/high16 v5, 0x5400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 439
    iget-object v4, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vlingo/client/car/voicedial/VDController;->sendAcceptedText(Ljava/lang/String;)V

    .line 440
    return-void

    .line 428
    .end local v3           #url:Ljava/lang/String;
    :cond_ad
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090234

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v7}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_57
.end method

.method protected dialDisplayItem(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .parameter "name"
    .parameter "address"
    .parameter "isAutoDial"

    .prologue
    .line 444
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v2

    const-string v3, "car-voicedial"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageAction(Ljava/lang/String;Ljava/util/Vector;Z)V

    .line 446
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

    .line 447
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, action:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 449
    const/high16 v2, 0x5400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/samsung/PhoneUtil;->turnOnSpeakerphoneIfRequired(Landroid/content/Context;)V

    .line 453
    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 454
    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->taskFinished()V

    .line 456
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/voicedial/VDController;->sendAcceptedText(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public getCommandForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 4
    .parameter "item"

    .prologue
    .line 195
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldIDForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 3
    .parameter "item"

    .prologue
    .line 182
    instance-of v0, p1, Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    if-eqz v0, :cond_7

    .line 183
    const-string v0, "vp_car_dial_type_num"

    .line 191
    :goto_6
    return-object v0

    .line 185
    :cond_7
    instance-of v0, p1, Lcom/vlingo/client/car/voicedial/ContactSelectionList;

    if-eqz v0, :cond_e

    .line 186
    const-string v0, "vp_car_dial_contact"

    goto :goto_6

    .line 188
    :cond_e
    instance-of v0, p1, Lcom/vlingo/client/car/voicedial/AutoDialContact;

    if-eqz v0, :cond_15

    .line 189
    const-string v0, "vp_car_dial_autodial"

    goto :goto_6

    .line 191
    :cond_15
    const-string v0, "vp_car_main_dial"

    goto :goto_6
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 151
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_main_dial"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskIconResourceID()I
    .registers 2

    .prologue
    .line 174
    const v0, 0x7f02005d

    return v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 178
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/vlingo/client/car/TaskController$TaskType;
    .registers 2

    .prologue
    .line 126
    sget-object v0, Lcom/vlingo/client/car/TaskController$TaskType;->TypeVoiceDial:Lcom/vlingo/client/car/TaskController$TaskType;

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 5
    .parameter "action"

    .prologue
    .line 130
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    .line 131
    const-string v2, "Contact"

    invoke-virtual {p1, v2}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, contact:Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17

    .line 133
    :cond_11
    const-string v2, "To"

    invoke-virtual {p1, v2}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_17
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_36

    .line 136
    const-string v2, "Type"

    invoke-virtual {p1, v2}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2f

    .line 138
    iput-object v1, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    .line 140
    :cond_2f
    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/vlingo/client/car/voicedial/VDController;->startVoiceDialFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x1

    .line 143
    .end local v1           #type:Ljava/lang/String;
    :goto_35
    return v2

    :cond_36
    const/4 v2, 0x0

    goto :goto_35
.end method

.method public onAutoAction(Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 12
    .parameter "contact"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 207
    iput-boolean v8, p0, Lcom/vlingo/client/car/voicedial/VDController;->autodialRunning:Z

    .line 211
    iget-object v6, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v6}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v5

    .line 212
    .local v5, size:I
    if-le v5, v8, :cond_4d

    .line 213
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 214
    .local v1, disambiguationItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    if-ge v3, v5, :cond_2d

    .line 215
    iget-object v6, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v6, v3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v0

    .line 216
    .local v0, cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactDetail;->isPhoneNumber()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 217
    new-instance v6, Lcom/vlingo/client/core/contacts/DisplayItem;

    iget-object v7, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-direct {v6, v7, v3}, Lcom/vlingo/client/core/contacts/DisplayItem;-><init>(Lcom/vlingo/client/core/contacts/VlingoContact;I)V

    invoke-virtual {v1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 220
    .end local v0           #cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    :cond_2d
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-le v6, v8, :cond_4d

    .line 221
    new-instance v2, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-direct {v2, v1}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;-><init>(Ljava/util/Vector;)V

    .line 222
    .local v2, groupedItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    iget-object v6, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v6}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f03004b

    invoke-static {v6, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    .line 223
    .local v4, phoneTypeList:Lcom/vlingo/client/car/voicedial/PhoneTypeList;
    invoke-virtual {v4, v2, p0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;)V

    .line 224
    invoke-virtual {v4}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->setIgnoreTTS()V

    .line 228
    .end local v1           #disambiguationItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    .end local v2           #groupedItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    .end local v3           #i:I
    .end local v4           #phoneTypeList:Lcom/vlingo/client/car/voicedial/PhoneTypeList;
    :cond_4d
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6, v8, v9}, Lcom/vlingo/client/car/voicedial/VDController;->dialDisplayItem(Lcom/vlingo/client/core/contacts/DisplayItem;ZZLjava/lang/Integer;)V

    .line 233
    return-void
.end method

.method public onAutoDialed(Lcom/vlingo/client/car/voicedial/AutoDialContact;Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 6
    .parameter "autoDialContactItem"
    .parameter "itemToCall"

    .prologue
    .line 315
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/vlingo/client/car/voicedial/VDController;->dialDisplayItem(Lcom/vlingo/client/core/contacts/DisplayItem;ZZLjava/lang/Integer;)V

    .line 316
    return-void
.end method

.method public onContactMatchResultsUpdate()V
    .registers 1

    .prologue
    .line 238
    return-void
.end method

.method public onContactMatchingFinished()V
    .registers 12

    .prologue
    const v10, 0x7f03004b

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 244
    iget-boolean v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->autodialRunning:Z

    if-nez v5, :cond_2b

    .line 245
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getNumContacts()I

    move-result v5

    if-ne v5, v7, :cond_a2

    .line 248
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/vlingo/client/core/contacts/SortedContactList;->get(I)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 249
    .local v1, item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    invoke-virtual {v1}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v5, v7, :cond_2c

    .line 252
    invoke-virtual {p0, v1, v9, v7, v8}, Lcom/vlingo/client/car/voicedial/VDController;->dialDisplayItem(Lcom/vlingo/client/core/contacts/DisplayItem;ZZLjava/lang/Integer;)V

    .line 308
    .end local v1           #item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    :cond_2b
    :goto_2b
    return-void

    .line 262
    .restart local v1       #item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    :cond_2c
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    if-eqz v5, :cond_84

    .line 263
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    invoke-static {v5, v1, v6}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->findMatchingDisplayItemsWithType(Landroid/content/Context;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 265
    .local v2, matchingItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v5, v7, :cond_5b

    .line 269
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v10, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    .line 270
    .local v3, phoneTypeList:Lcom/vlingo/client/car/voicedial/PhoneTypeList;
    invoke-virtual {v3, v1, p0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;)V

    .line 271
    invoke-virtual {v2, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {p0, v5, v9, v7, v8}, Lcom/vlingo/client/car/voicedial/VDController;->dialDisplayItem(Lcom/vlingo/client/core/contacts/DisplayItem;ZZLjava/lang/Integer;)V

    goto :goto_2b

    .line 277
    .end local v3           #phoneTypeList:Lcom/vlingo/client/car/voicedial/PhoneTypeList;
    :cond_5b
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-le v5, v7, :cond_84

    .line 282
    new-instance v4, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-direct {v4, v2}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;-><init>(Ljava/util/Vector;)V

    .line 283
    .local v4, prunedGrItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v10, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    .line 284
    .restart local v3       #phoneTypeList:Lcom/vlingo/client/car/voicedial/PhoneTypeList;
    invoke-virtual {v3, v4, p0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;)V

    .line 285
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5, v3, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 286
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v5

    const-string v6, "car-voicedial-phonetype"

    invoke-virtual {v5, v6}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto :goto_2b

    .line 290
    .end local v2           #matchingItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    .end local v3           #phoneTypeList:Lcom/vlingo/client/car/voicedial/PhoneTypeList;
    .end local v4           #prunedGrItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    :cond_84
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v10, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    .line 291
    .restart local v3       #phoneTypeList:Lcom/vlingo/client/car/voicedial/PhoneTypeList;
    invoke-virtual {v3, v1, p0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;)V

    .line 292
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5, v3, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 293
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v5

    const-string v6, "car-voicedial-phonetype"

    invoke-virtual {v5, v6}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto :goto_2b

    .line 296
    .end local v1           #item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    .end local v3           #phoneTypeList:Lcom/vlingo/client/car/voicedial/PhoneTypeList;
    :cond_a2
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getNumContacts()I

    move-result v5

    if-le v5, v7, :cond_2b

    .line 299
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f030049

    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/voicedial/ContactSelectionList;

    .line 300
    .local v0, contactSelectList:Lcom/vlingo/client/car/voicedial/ContactSelectionList;
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v5

    iget-object v6, p0, Lcom/vlingo/client/car/voicedial/VDController;->contact:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, p0}, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->initialize(Lcom/vlingo/client/core/contacts/SortedContactList;Ljava/lang/String;Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;)V

    .line 301
    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5, v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 302
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v5

    const-string v6, "car-voicedial-contact"

    invoke-virtual {v5, v6}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto/16 :goto_2b
.end method

.method public onContactSelected(Lcom/vlingo/client/car/voicedial/ContactSelectionList;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;)V
    .registers 10
    .parameter "contactSelectionList"
    .parameter "contact"
    .parameter "optionalType"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 326
    invoke-virtual {p2}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v2, v3, :cond_11

    .line 327
    invoke-virtual {p0, p2, v5, v3, v4}, Lcom/vlingo/client/car/voicedial/VDController;->dialDisplayItem(Lcom/vlingo/client/core/contacts/DisplayItem;ZZLjava/lang/Integer;)V

    .line 360
    :goto_10
    return-void

    .line 335
    :cond_11
    invoke-static {p3}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 336
    iget-object p3, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    .line 339
    :cond_21
    if-eqz p3, :cond_3d

    .line 340
    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->findMatchingDisplayItemsWithType(Landroid/content/Context;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 341
    .local v0, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v2, v3, :cond_37

    .line 342
    invoke-virtual {p0, p2, v5, v3, v4}, Lcom/vlingo/client/car/voicedial/VDController;->dialDisplayItem(Lcom/vlingo/client/core/contacts/DisplayItem;ZZLjava/lang/Integer;)V

    goto :goto_10

    .line 349
    :cond_37
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v2, v3, :cond_3d

    .line 356
    .end local v0           #items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    :cond_3d
    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f03004b

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    .line 357
    .local v1, phoneTypeList:Lcom/vlingo/client/car/voicedial/PhoneTypeList;
    invoke-virtual {v1, p2, p0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;)V

    .line 358
    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2, v1, p1}, Lcom/vlingo/client/car/CarActivityDelegate;->pushTaskItem(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/CarScrollableItem;)V

    .line 359
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v2

    const-string v3, "car-voicedial-phonetype"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/voicedial/VDController;->onTTSFinished(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 486
    return-void
.end method

.method public onDemandDidPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 477
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/voicedial/VDController;->onTTSFinished(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 478
    return-void
.end method

.method public onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/voicedial/VDController;->onTTSFinished(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 482
    return-void
.end method

.method public onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 474
    return-void
.end method

.method public onDialContact(Lcom/vlingo/client/car/voicedial/CallingView;Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 6
    .parameter "callingItem"
    .parameter "contact"

    .prologue
    .line 381
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/vlingo/client/car/voicedial/VDController;->dialDisplayItem(Lcom/vlingo/client/core/contacts/DisplayItem;ZZLjava/lang/Integer;)V

    .line 382
    return-void
.end method

.method public onDialContact(Lcom/vlingo/client/car/voicedial/CallingView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "callingItem"
    .parameter "name"
    .parameter "address"

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/vlingo/client/car/voicedial/VDController;->dialDisplayItem(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 385
    return-void
.end method

.method public onDialContactImmediately(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter "mainView"
    .parameter "contactName"
    .parameter "type"
    .parameter "address"

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p4, v0}, Lcom/vlingo/client/car/voicedial/VDController;->dialDisplayItem(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 392
    return-void
.end method

.method public onFinalize(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 171
    return-void
.end method

.method public onInitialize(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 168
    return-void
.end method

.method public onPhoneTypeSelected(Lcom/vlingo/client/car/voicedial/PhoneTypeList;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/Integer;)V
    .registers 7
    .parameter "phoneTypeList"
    .parameter "contact"
    .parameter "typeItem"
    .parameter "index"

    .prologue
    .line 370
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v0, v1, p4}, Lcom/vlingo/client/car/voicedial/VDController;->dialDisplayItem(Lcom/vlingo/client/core/contacts/DisplayItem;ZZLjava/lang/Integer;)V

    .line 375
    return-void
.end method

.method public startVoiceDialFlow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 79
    iput-object v3, p0, Lcom/vlingo/client/car/voicedial/VDController;->contact:Ljava/lang/String;

    .line 80
    iput-object v3, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/VDController;->updateType()V

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vlingo/client/car/voicedial/VDController;->autodialRunning:Z

    .line 83
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f03004a

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;

    .line 84
    .local v0, mainScreen:Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;
    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen;->initialize(Lcom/vlingo/client/car/voicedial/VoiceDialMainScreen$VoiceDialScreenListener;)V

    .line 85
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 86
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "car-voicedial-home"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public startVoiceDialFlow(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "contact"
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    iput-boolean v3, p0, Lcom/vlingo/client/car/voicedial/VDController;->autodialRunning:Z

    .line 91
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/VDController;->contact:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/VDController;->updateType()V

    .line 94
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VDController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    const/high16 v5, 0x42c8

    invoke-virtual {v4, p1, v5}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->startSearch(Ljava/lang/String;F)Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v4

    if-eqz v4, :cond_3e

    move v0, v2

    .line 95
    .local v0, hasResults:Z
    :goto_16
    if-nez v0, :cond_3d

    .line 96
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4}, Lcom/vlingo/client/car/CarActivityDelegate;->playErrorTone()V

    .line 98
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090225

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, noMatch:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/VDController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-array v2, v2, [Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-interface {v4, v2}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 101
    .end local v1           #noMatch:Ljava/lang/String;
    :cond_3d
    return-void

    .end local v0           #hasResults:Z
    :cond_3e
    move v0, v3

    .line 94
    goto :goto_16
.end method

.method protected updateType()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 106
    new-array v0, v3, [I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 107
    .local v0, phoneTyes:[I
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 108
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    const-string v2, "work"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 109
    new-array v0, v3, [I

    .end local v0           #phoneTyes:[I
    const/4 v1, 0x3

    aput v1, v0, v4

    .line 118
    .restart local v0       #phoneTyes:[I
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VDController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    const-string v2, "call"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->initialize(Ljava/lang/String;[I[I)V

    .line 119
    return-void

    .line 111
    :cond_23
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 112
    new-array v0, v3, [I

    .end local v0           #phoneTyes:[I
    const/4 v1, 0x2

    aput v1, v0, v4

    .restart local v0       #phoneTyes:[I
    goto :goto_1a

    .line 114
    :cond_33
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/VDController;->type:Ljava/lang/String;

    const-string v2, "home"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 115
    new-array v0, v3, [I

    .end local v0           #phoneTyes:[I
    aput v3, v0, v4

    .restart local v0       #phoneTyes:[I
    goto :goto_1a
.end method
