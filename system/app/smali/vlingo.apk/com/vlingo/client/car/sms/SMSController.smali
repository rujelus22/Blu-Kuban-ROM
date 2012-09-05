.class public Lcom/vlingo/client/car/sms/SMSController;
.super Lcom/vlingo/client/car/voicedial/VDController;
.source "SMSController.java"

# interfaces
.implements Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;
.implements Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;
.implements Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_BTB_SMS_SENT:Ljava/lang/String; = "com.btb.intent.action.SMS_SENT"

.field private static final ACTION_MESSAGE_SENT:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_SENT"

.field private static final ACTION_SMS_SENT:Ljava/lang/String; = "com.vlingo.client.samsung.actions.ACTION_SMS_SENT"

.field private static final EXTRA_URI:Ljava/lang/String; = "com.vlingo.client.extras.URI"


# instance fields
.field private hasResults:Z

.field private mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

.field private message:Ljava/lang/String;

.field private messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

.field private smsSendReceiver:Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 4
    .parameter "delegate"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/voicedial/VDController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/sms/SMSController;->hasResults:Z

    .line 71
    iput-object v1, p0, Lcom/vlingo/client/car/sms/SMSController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 72
    iput-object v1, p0, Lcom/vlingo/client/car/sms/SMSController;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/sms/SMSController;Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/vlingo/client/car/sms/SMSController;->notifySMSSent(Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/sms/SMSController;)Lcom/vlingo/client/ui/VProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vlingo/client/car/sms/SMSController;Lcom/vlingo/client/ui/VProgressDialog;)Lcom/vlingo/client/ui/VProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/sms/SMSController;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/sms/SMSController;->sendMessage(Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;)V

    return-void
.end method

.method private checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter "demand"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 672
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSController;->unregisterListeners()V

    .line 673
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/sms/SMSController;->onSmsSent(Z)V

    .line 675
    :cond_f
    return-void
.end method

.method private notifySMSSent(Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V
    .registers 10
    .parameter "reciever"
    .parameter "intent"
    .parameter "uri"
    .parameter "success"
    .parameter "errCode"

    .prologue
    .line 597
    if-eqz p2, :cond_2

    .line 603
    :cond_2
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    if-eqz v2, :cond_38

    .line 604
    if-eqz p4, :cond_39

    .line 607
    if-eqz p2, :cond_24

    const-string v2, "com.vlingo.client.extras.URI"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 608
    const-string v2, "com.vlingo.client.extras.URI"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/net/Uri;

    .line 609
    .restart local p3
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, p3, v3}, Lcom/vlingo/client/util/SMSUtil;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;I)Z

    .line 611
    :cond_24
    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SENT_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    iput-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 634
    :goto_28
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 635
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 637
    :cond_38
    return-void

    .line 615
    :cond_39
    if-eqz p2, :cond_3f

    .line 616
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    .line 618
    :cond_3f
    if-eqz p3, :cond_4b

    .line 619
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, p3, v3}, Lcom/vlingo/client/util/SMSUtil;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;I)Z

    .line 621
    :cond_4b
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 622
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, errorMessage:Ljava/lang/String;
    packed-switch p5, :pswitch_data_7e

    .line 632
    :goto_5f
    :pswitch_5f
    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SEND_ERROR_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    iput-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    goto :goto_28

    .line 627
    :pswitch_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090215

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    goto :goto_5f

    .line 623
    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_64
    .end packed-switch
.end method

.method private sendAcceptedText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "message"
    .parameter "contactName"

    .prologue
    .line 471
    const-string v0, "sms:def"

    .line 472
    .local v0, acceptedType:Ljava/lang/String;
    new-instance v1, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;

    invoke-direct {v1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;-><init>()V

    .line 473
    .local v1, collection:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 474
    .local v2, text:Ljava/lang/StringBuffer;
    const-string v3, "<AcceptedText pt=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    const-string v3, "<Tag u=\"text\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    const-string v3, "</Tag>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    const-string v3, "<Tag u=\"contact\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    const-string v3, "</Tag>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    const-string v3, "</AcceptedText>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->setAcceptedText(Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->sendStatsToServer(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V

    .line 486
    return-void
.end method

.method private sendMessage(Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;)V
    .registers 20
    .parameter "contactToText"
    .parameter "msg"

    .prologue
    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 494
    .local v9, context:Landroid/content/Context;
    const-string v2, "phone"

    invoke-virtual {v9, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 496
    .local v13, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v15

    .line 498
    .local v15, simState:I
    const/4 v2, 0x1

    if-ne v15, v2, :cond_25

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlingo/client/car/sms/SMSController;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/vlingo/client/car/sms/SMSController;->notifySMSSent(Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V

    .line 561
    :goto_24
    return-void

    .line 503
    :cond_25
    const/4 v5, 0x0

    .line 509
    .local v5, newUri:Landroid/net/Uri;
    :try_start_26
    const-string v12, "com.vlingo.client.samsung.actions.ACTION_SMS_SENT"

    .line 511
    .local v12, intentFilter:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->smsMethod()I

    move-result v16

    .line 512
    .local v16, smsMethod:I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_87

    const/4 v14, 0x1

    .line 514
    .local v14, oldway:Z
    :goto_32
    packed-switch v16, :pswitch_data_9a

    .line 526
    :goto_35
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 527
    .local v11, in:Landroid/content/IntentFilter;
    new-instance v2, Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;-><init>(Lcom/vlingo/client/car/sms/SMSController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vlingo/client/car/sms/SMSController;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlingo/client/car/sms/SMSController;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;

    invoke-virtual {v2, v3, v11}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, address:Ljava/lang/String;
    if-eqz v14, :cond_92

    .line 536
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/vlingo/client/car/sms/SMSController;->sendSmsByCommonWay(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_69
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/sms/SMSController;->sendAcceptedText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_78} :catch_79

    goto :goto_24

    .line 558
    .end local v8           #address:Ljava/lang/String;
    .end local v11           #in:Landroid/content/IntentFilter;
    .end local v12           #intentFilter:Ljava/lang/String;
    .end local v14           #oldway:Z
    .end local v16           #smsMethod:I
    :catch_79
    move-exception v10

    .line 559
    .local v10, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlingo/client/car/sms/SMSController;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/vlingo/client/car/sms/SMSController;->notifySMSSent(Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V

    goto :goto_24

    .line 512
    .end local v10           #ex:Ljava/lang/Exception;
    .restart local v12       #intentFilter:Ljava/lang/String;
    .restart local v16       #smsMethod:I
    :cond_87
    const/4 v14, 0x0

    goto :goto_32

    .line 516
    .restart local v14       #oldway:Z
    :pswitch_89
    :try_start_89
    const-string v12, "com.vlingo.client.samsung.actions.ACTION_SMS_SENT"

    .line 517
    goto :goto_35

    .line 519
    :pswitch_8c
    const-string v12, "com.btb.intent.action.SMS_SENT"

    .line 520
    goto :goto_35

    .line 522
    :pswitch_8f
    const-string v12, "com.android.mms.transaction.MESSAGE_SENT"

    goto :goto_35

    .line 539
    .restart local v8       #address:Ljava/lang/String;
    .restart local v11       #in:Landroid/content/IntentFilter;
    :cond_92
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/vlingo/client/car/sms/SMSController;->sendSmsBySpecificWay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_99} :catch_79

    goto :goto_69

    .line 514
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_89
        :pswitch_8c
        :pswitch_8f
    .end packed-switch
.end method

.method private sendSmsByCommonWay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "msg"
    .parameter "address"

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 573
    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/vlingo/client/util/SMSUtil;->addMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v9

    .line 578
    .local v9, newUri:Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.vlingo.client.samsung.actions.ACTION_SMS_SENT"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v10, sentIntent:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.extras.URI"

    invoke-virtual {v10, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 585
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 586
    .local v0, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 587
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v8, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_4a

    .line 589
    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x1000

    invoke-static {v1, v4, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_4a
    move-object v1, p2

    move-object v2, v11

    move-object v4, v8

    move-object v5, v11

    .line 591
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 593
    return-void
.end method

.method private sendSmsBySpecificWay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "msg"
    .parameter "address"

    .prologue
    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.Send.SMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "recipient"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 570
    return-void
.end method

.method private unregisterListeners()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 640
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;

    if-eqz v0, :cond_12

    .line 642
    :try_start_5
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSController;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_10} :catch_22

    .line 647
    :goto_10
    iput-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;

    .line 649
    :cond_12
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v0, :cond_21

    .line 650
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 651
    iput-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 653
    :cond_21
    return-void

    .line 643
    :catch_22
    move-exception v0

    goto :goto_10
.end method


# virtual methods
.method protected dialDisplayItem(Lcom/vlingo/client/core/contacts/DisplayItem;Z)V
    .registers 4
    .parameter "itemToCall"
    .parameter "notify"

    .prologue
    .line 449
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getCommandForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 4
    .parameter "item"

    .prologue
    .line 241
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldIDForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 3
    .parameter "item"

    .prologue
    .line 228
    instance-of v0, p1, Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    if-eqz v0, :cond_7

    .line 229
    const-string v0, "vp_car_sms_type_num"

    .line 237
    :goto_6
    return-object v0

    .line 231
    :cond_7
    instance-of v0, p1, Lcom/vlingo/client/car/voicedial/ContactSelectionList;

    if-eqz v0, :cond_e

    .line 232
    const-string v0, "vp_car_sms_contact"

    goto :goto_6

    .line 234
    :cond_e
    instance-of v0, p1, Lcom/vlingo/client/car/sms/SMSMessageView;

    if-eqz v0, :cond_15

    .line 235
    const-string v0, "vp_car_sms_msg"

    goto :goto_6

    .line 237
    :cond_15
    const-string v0, "vp_car_main_sms"

    goto :goto_6
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 198
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_main_sms"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskIconResourceID()I
    .registers 2

    .prologue
    .line 220
    const v0, 0x7f02005f

    return v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 224
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/vlingo/client/car/TaskController$TaskType;
    .registers 2

    .prologue
    .line 141
    sget-object v0, Lcom/vlingo/client/car/TaskController$TaskType;->TypeSMS:Lcom/vlingo/client/car/TaskController$TaskType;

    return-object v0
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 7
    .parameter "action"

    .prologue
    .line 110
    const-string v3, "Contact"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, contact:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_14

    .line 112
    :cond_e
    const-string v3, "To"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_14
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_45

    .line 115
    const-string v3, "Message"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, message:Ljava/lang/String;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2c

    .line 117
    iput-object v1, p0, Lcom/vlingo/client/car/sms/SMSController;->message:Ljava/lang/String;

    .line 119
    :cond_2c
    const-string v3, "Type"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, type:Ljava/lang/String;
    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3c

    .line 121
    iput-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->type:Ljava/lang/String;

    .line 123
    :cond_3c
    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->type:Ljava/lang/String;

    iget-object v4, p0, Lcom/vlingo/client/car/sms/SMSController;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Lcom/vlingo/client/car/sms/SMSController;->startSMSFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v3, 0x1

    .line 126
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #type:Ljava/lang/String;
    :goto_44
    return v3

    :cond_45
    const/4 v3, 0x0

    goto :goto_44
.end method

.method public onAutoAction(Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 2
    .parameter "contact"

    .prologue
    .line 251
    return-void
.end method

.method public onContactMatchResultsUpdate()V
    .registers 1

    .prologue
    .line 256
    return-void
.end method

.method public onContactMatchingFinished()V
    .registers 15

    .prologue
    const v13, 0x7f030047

    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 262
    iget-boolean v9, p0, Lcom/vlingo/client/car/sms/SMSController;->hasResults:Z

    if-nez v9, :cond_b

    .line 330
    :cond_a
    :goto_a
    return-void

    .line 265
    :cond_b
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v9}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getNumContacts()I

    move-result v9

    if-ne v9, v12, :cond_a3

    .line 268
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v9}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/vlingo/client/core/contacts/SortedContactList;->get(I)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 269
    .local v5, item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    invoke-virtual {v5}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ne v9, v12, :cond_49

    .line 272
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v13, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vlingo/client/car/sms/SMSMessageView;

    .line 273
    .local v7, messageView:Lcom/vlingo/client/car/sms/SMSMessageView;
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->message:Ljava/lang/String;

    invoke-virtual {v7, v5, v5, v9, p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;)V

    .line 274
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9, v7, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 275
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v9

    const-string v10, "car-sms-message"

    invoke-virtual {v9, v10}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto :goto_a

    .line 283
    .end local v7           #messageView:Lcom/vlingo/client/car/sms/SMSMessageView;
    :cond_49
    invoke-virtual {v5}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v9

    new-array v10, v10, [Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 284
    .local v6, items:[Lcom/vlingo/client/core/contacts/DisplayItem;
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/vlingo/client/util/SMSUtil;->findMatchingDisplayItemInInboxOutbox(Landroid/content/Context;[Lcom/vlingo/client/core/contacts/DisplayItem;)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v4

    .line 285
    .local v4, inboxOutboxMatch:Lcom/vlingo/client/core/contacts/DisplayItem;
    if-eqz v4, :cond_81

    .line 288
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v13, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vlingo/client/car/sms/SMSMessageView;

    .line 289
    .restart local v7       #messageView:Lcom/vlingo/client/car/sms/SMSMessageView;
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->message:Ljava/lang/String;

    invoke-virtual {v7, v5, v4, v9, p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;)V

    .line 290
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9, v7, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 291
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v9

    const-string v10, "car-sms-message"

    invoke-virtual {v9, v10}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto :goto_a

    .line 294
    .end local v7           #messageView:Lcom/vlingo/client/car/sms/SMSMessageView;
    :cond_81
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f03004b

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    .line 295
    .local v8, phoneTypeList:Lcom/vlingo/client/car/voicedial/PhoneTypeList;
    invoke-virtual {v8, v5, p0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;)V

    .line 296
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9, v8, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 297
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v9

    const-string v10, "car-sms-phonetype"

    invoke-virtual {v9, v10}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 299
    .end local v4           #inboxOutboxMatch:Lcom/vlingo/client/core/contacts/DisplayItem;
    .end local v5           #item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    .end local v6           #items:[Lcom/vlingo/client/core/contacts/DisplayItem;
    .end local v8           #phoneTypeList:Lcom/vlingo/client/car/voicedial/PhoneTypeList;
    :cond_a3
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v9}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getNumContacts()I

    move-result v9

    if-le v9, v12, :cond_a

    .line 304
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v9}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v0

    .line 305
    .local v0, contactList:Lcom/vlingo/client/core/contacts/SortedContactList;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 306
    .local v2, contacts:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b7
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/SortedContactList;->getNumDisplayItems()I

    move-result v9

    if-ge v3, v9, :cond_c9

    .line 307
    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/contacts/SortedContactList;->get(I)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 308
    .restart local v5       #item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 310
    .end local v5           #item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    :cond_c9
    new-array v9, v10, [Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 311
    .local v6, items:[Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/vlingo/client/util/SMSUtil;->findMatchingDisplayItemInInboxOutbox(Landroid/content/Context;[Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;)Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;

    move-result-object v4

    .line 312
    .local v4, inboxOutboxMatch:Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;
    if-eqz v4, :cond_102

    .line 315
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v13, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vlingo/client/car/sms/SMSMessageView;

    .line 316
    .restart local v7       #messageView:Lcom/vlingo/client/car/sms/SMSMessageView;
    iget-object v9, v4, Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;->parentItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    iget-object v10, v4, Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;->matchedItem:Lcom/vlingo/client/core/contacts/DisplayItem;

    iget-object v11, p0, Lcom/vlingo/client/car/sms/SMSController;->message:Ljava/lang/String;

    invoke-virtual {v7, v9, v10, v11, p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;)V

    .line 317
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9, v7, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 318
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v9

    const-string v10, "car-sms-message"

    invoke-virtual {v9, v10}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 322
    .end local v7           #messageView:Lcom/vlingo/client/car/sms/SMSMessageView;
    :cond_102
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f030049

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/car/voicedial/ContactSelectionList;

    .line 323
    .local v1, contactSelectList:Lcom/vlingo/client/car/voicedial/ContactSelectionList;
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-virtual {v9}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v9

    iget-object v10, p0, Lcom/vlingo/client/car/sms/SMSController;->contact:Ljava/lang/String;

    invoke-virtual {v1, v9, v10, p0}, Lcom/vlingo/client/car/voicedial/ContactSelectionList;->initialize(Lcom/vlingo/client/core/contacts/SortedContactList;Ljava/lang/String;Lcom/vlingo/client/car/voicedial/ContactSelectionList$ContactSelectionListActionListener;)V

    .line 324
    iget-object v9, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9, v1, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 325
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v9

    const-string v10, "car-sms-contact"

    invoke-virtual {v9, v10}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public onContactSelected(Lcom/vlingo/client/car/voicedial/ContactSelectionList;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;)V
    .registers 11
    .parameter "contactSelectionList"
    .parameter "contact"
    .parameter "optionalType"

    .prologue
    const v6, 0x7f030047

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 389
    invoke-virtual {p2}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v3, v4, :cond_2f

    .line 390
    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v6, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/car/sms/SMSMessageView;

    .line 391
    .local v1, messageView:Lcom/vlingo/client/car/sms/SMSMessageView;
    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->message:Ljava/lang/String;

    invoke-virtual {v1, p2, p2, v3, p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;)V

    .line 392
    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3, v1, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 393
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v3

    const-string v4, "car-sms-message"

    invoke-virtual {v3, v4}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 416
    .end local v1           #messageView:Lcom/vlingo/client/car/sms/SMSMessageView;
    :goto_2e
    return-void

    .line 397
    :cond_2f
    if-eqz p3, :cond_6e

    .line 398
    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p2, p3}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->findMatchingDisplayItemsWithType(Landroid/content/Context;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 399
    .local v0, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v3, v4, :cond_68

    .line 400
    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v6, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/car/sms/SMSMessageView;

    .line 401
    .restart local v1       #messageView:Lcom/vlingo/client/car/sms/SMSMessageView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/core/contacts/DisplayItem;

    iget-object v4, p0, Lcom/vlingo/client/car/sms/SMSController;->message:Ljava/lang/String;

    invoke-virtual {v1, p2, v3, v4, p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;)V

    .line 402
    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3, v1, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 403
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v3

    const-string v4, "car-sms-message"

    invoke-virtual {v3, v4}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto :goto_2e

    .line 405
    .end local v1           #messageView:Lcom/vlingo/client/car/sms/SMSMessageView;
    :cond_68
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v3, v4, :cond_6e

    .line 412
    .end local v0           #items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    :cond_6e
    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f03004b

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/car/voicedial/PhoneTypeList;

    .line 413
    .local v2, phoneTypeList:Lcom/vlingo/client/car/voicedial/PhoneTypeList;
    invoke-virtual {v2, p2, p0}, Lcom/vlingo/client/car/voicedial/PhoneTypeList;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/car/voicedial/PhoneTypeList$PhoneTypeListActionListener;)V

    .line 414
    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3, v2, p1}, Lcom/vlingo/client/car/CarActivityDelegate;->pushTaskItem(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/CarScrollableItem;)V

    .line 415
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v3

    const-string v4, "car-sms-phonetype"

    invoke-virtual {v3, v4}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/sms/SMSController;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 657
    return-void
.end method

.method public onDemandDidPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/sms/SMSController;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 661
    return-void
.end method

.method public onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/sms/SMSController;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 665
    return-void
.end method

.method public onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 668
    return-void
.end method

.method public onFinalize(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 217
    return-void
.end method

.method public onInitialize(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 214
    return-void
.end method

.method public onPhoneTypeSelected(Lcom/vlingo/client/car/voicedial/PhoneTypeList;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/Integer;)V
    .registers 9
    .parameter "phoneTypeList"
    .parameter "contact"
    .parameter "typeItem"
    .parameter "index"

    .prologue
    .line 426
    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030047

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/sms/SMSMessageView;

    .line 427
    .local v0, messageView:Lcom/vlingo/client/car/sms/SMSMessageView;
    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSController;->message:Ljava/lang/String;

    invoke-virtual {v0, p2, p3, v1, p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;)V

    .line 428
    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 429
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "car-sms-message"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public onReplyToContact(Lcom/vlingo/client/car/sms/SMSMainScreen;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "mainView"
    .parameter "contactName"
    .parameter "address"

    .prologue
    .line 340
    const-string v3, "mobile"

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/car/sms/SMSController;->startSMSFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 341
    return-void
.end method

.method public onSendText(Lcom/vlingo/client/car/sms/SMSMessageView;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;)V
    .registers 11
    .parameter "messageView"
    .parameter "contact"
    .parameter "contactToText"
    .parameter "message"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    check-cast v0, Lcom/vlingo/client/car/CarActivity;

    .line 356
    .local v0, activity:Lcom/vlingo/client/car/CarActivity;
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity;->onCancelButtonClicked()V

    .line 358
    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 359
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, title:Ljava/lang/String;
    new-instance v3, Lcom/vlingo/client/ui/VProgressDialog;

    invoke-direct {v3, v1, v2}, Lcom/vlingo/client/ui/VProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    .line 361
    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    new-instance v4, Lcom/vlingo/client/car/sms/SMSController$1;

    invoke-direct {v4, p0}, Lcom/vlingo/client/car/sms/SMSController$1;-><init>(Lcom/vlingo/client/car/sms/SMSController;)V

    invoke-virtual {v3, v4}, Lcom/vlingo/client/ui/VProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 369
    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    invoke-virtual {v3}, Lcom/vlingo/client/ui/VProgressDialog;->show()V

    .line 371
    new-instance v3, Lcom/vlingo/client/car/sms/SMSController$2;

    invoke-direct {v3, p0, p3, p4}, Lcom/vlingo/client/car/sms/SMSController$2;-><init>(Lcom/vlingo/client/car/sms/SMSController;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;)V

    const-wide/16 v4, 0x4e2

    invoke-static {v3, v4, v5}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 379
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v3

    const-string v4, "car-sms-sending"

    invoke-virtual {v3, v4}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public onSmsSent(Z)V
    .registers 6
    .parameter "success"

    .prologue
    const/4 v3, 0x0

    .line 436
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/ui/VProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 437
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/ui/VProgressDialog;->dismiss()V

    .line 438
    iput-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    .line 440
    :cond_14
    if-eqz p1, :cond_26

    .line 441
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "car-sms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageAction(Ljava/lang/String;Ljava/util/Vector;Z)V

    .line 445
    :goto_20
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->taskFinished()V

    .line 446
    return-void

    .line 443
    :cond_26
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "car-sms-send-error"

    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SEND_ERROR_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->errorDisplayed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public startSMSFlow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 130
    iput-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->contact:Ljava/lang/String;

    .line 131
    iput-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->type:Ljava/lang/String;

    .line 132
    iput-object v3, p0, Lcom/vlingo/client/car/sms/SMSController;->message:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSController;->updateType()V

    .line 134
    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030046

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/sms/SMSMainScreen;

    .line 135
    .local v0, mainScreen:Lcom/vlingo/client/car/sms/SMSMainScreen;
    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->initialize(Lcom/vlingo/client/car/sms/SMSMainScreen$SMSMainScreenListener;)V

    .line 136
    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 137
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "car-sms-home"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public startSMSFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "contact"
    .parameter "type"
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    iput-boolean v4, p0, Lcom/vlingo/client/car/sms/SMSController;->autodialRunning:Z

    .line 146
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSController;->contact:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/vlingo/client/car/sms/SMSController;->type:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/vlingo/client/car/sms/SMSController;->message:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSController;->updateType()V

    .line 150
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->contactMatcher:Lcom/vlingo/client/core/contacts/ContactsMatcher;

    const/high16 v5, 0x42c8

    invoke-virtual {v2, p1, v5}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->startSearch(Ljava/lang/String;F)Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v2

    if-eqz v2, :cond_3f

    move v2, v3

    :goto_18
    iput-boolean v2, p0, Lcom/vlingo/client/car/sms/SMSController;->hasResults:Z

    .line 151
    iget-boolean v2, p0, Lcom/vlingo/client/car/sms/SMSController;->hasResults:Z

    if-nez v2, :cond_3e

    .line 152
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->playErrorTone()V

    .line 153
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_41

    .line 156
    :cond_2b
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-array v3, v3, [Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v5, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->NO_MATCH_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v5}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 166
    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    move v2, v4

    .line 150
    goto :goto_18

    .line 158
    :cond_41
    if-eqz p3, :cond_66

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_66

    .line 159
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090060

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, errorHelp:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-array v3, v3, [Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_3e

    .line 162
    .end local v0           #errorHelp:Ljava/lang/String;
    :cond_66
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090225

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, noMatch:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-array v3, v3, [Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_3e
.end method

.method public startSMSFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .parameter "contactName"
    .parameter "contactAddress"
    .parameter "type"
    .parameter "message"
    .parameter "isReply"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 169
    iput-boolean v7, p0, Lcom/vlingo/client/car/sms/SMSController;->autodialRunning:Z

    .line 171
    iput-object p2, p0, Lcom/vlingo/client/car/sms/SMSController;->contact:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Lcom/vlingo/client/car/sms/SMSController;->type:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lcom/vlingo/client/car/sms/SMSController;->message:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSController;->updateType()V

    .line 176
    if-nez p1, :cond_11

    const-string p1, ""

    .line 178
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_18

    .line 179
    move-object p1, p2

    .line 182
    :cond_18
    new-instance v0, Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-direct {v0, p1, v8}, Lcom/vlingo/client/core/contacts/VlingoContact;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/contacts/ContactDetailProvider;)V

    .line 183
    .local v0, c:Lcom/vlingo/client/core/contacts/VlingoContact;
    new-instance v1, Lcom/vlingo/client/core/contacts/ContactDetail;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v1, p2, v5, v6}, Lcom/vlingo/client/core/contacts/ContactDetail;-><init>(Ljava/lang/String;IZ)V

    .line 184
    .local v1, cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->addDetail(Lcom/vlingo/client/core/contacts/ContactDetail;)V

    .line 185
    new-instance v3, Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-direct {v3, v0, v7}, Lcom/vlingo/client/core/contacts/DisplayItem;-><init>(Lcom/vlingo/client/core/contacts/VlingoContact;I)V

    .line 186
    .local v3, itemToText:Lcom/vlingo/client/core/contacts/DisplayItem;
    new-instance v2, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-direct {v2, v3}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;-><init>(Lcom/vlingo/client/core/contacts/DisplayItem;)V

    .line 188
    .local v2, contact:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    iget-object v5, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f030047

    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/car/sms/SMSMessageView;

    .line 189
    .local v4, messageView:Lcom/vlingo/client/car/sms/SMSMessageView;
    invoke-virtual {v4, v2, v3, p4, p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;)V

    .line 190
    if-eqz p5, :cond_48

    .line 191
    invoke-virtual {v4}, Lcom/vlingo/client/car/sms/SMSMessageView;->setIsReply()V

    .line 192
    :cond_48
    iget-object v5, p0, Lcom/vlingo/client/car/sms/SMSController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5, v4, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 193
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v5

    const-string v6, "car-sms-message"

    invoke-virtual {v5, v6}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 195
    return-void
.end method
