.class public Lcom/vlingo/client/car/sms/SMSSendingView;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "SMSSendingView.java"

# interfaces
.implements Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;,
        Lcom/vlingo/client/car/sms/SMSSendingView$SMSSendingActionListener;
    }
.end annotation


# static fields
.field private static final ACTION_SMS_SENT:Ljava/lang/String; = "com.vlingo.client.samsung.actions.ACTION_SMS_SENT"

.field private static final EXTRA_URI:Ljava/lang/String; = "com.vlingo.client.extras.URI"


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private cancelled:Z

.field private contact:Lcom/vlingo/client/core/contacts/DisplayItem;

.field private listener:Lcom/vlingo/client/car/sms/SMSSendingView$SMSSendingActionListener;

.field private message:Ljava/lang/String;

.field private messageFailedDemand:Lcom/vlingo/client/core/tts/TTSDemand;

.field private messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

.field private smsSendReceiver:Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 48
    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->messageFailedDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 49
    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->cancelled:Z

    .line 56
    return-void
.end method

.method static synthetic access$002(Lcom/vlingo/client/car/sms/SMSSendingView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->cancelled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/vlingo/client/car/sms/SMSSendingView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->overloadingBottomContainer:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/sms/SMSSendingView;)Lcom/vlingo/client/car/CarActivityDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vlingo/client/car/sms/SMSSendingView;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->cancelButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vlingo/client/car/sms/SMSSendingView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSSendingView;->sendMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/vlingo/client/car/sms/SMSSendingView;Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/vlingo/client/car/sms/SMSSendingView;->notifySMSSent(Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V

    return-void
.end method

.method private checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter "demand"

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->cancelled:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->messageFailedDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 286
    :cond_14
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSSendingView;->unregisterListeners()V

    .line 287
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSSendingView;->notifySendComplete()V

    .line 289
    :cond_1a
    return-void
.end method

.method private notifySMSSent(Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V
    .registers 10
    .parameter "reciever"
    .parameter "intent"
    .parameter "uri"
    .parameter "success"
    .parameter "errCode"

    .prologue
    .line 199
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    if-eqz v2, :cond_36

    .line 200
    if-eqz p4, :cond_37

    .line 203
    if-eqz p2, :cond_22

    const-string v2, "com.vlingo.client.extras.URI"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 204
    const-string v2, "com.vlingo.client.extras.URI"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/net/Uri;

    .line 205
    .restart local p3
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, p3, v3}, Lcom/vlingo/client/util/SMSUtil;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;I)Z

    .line 207
    :cond_22
    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SENT_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    iput-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 230
    :goto_26
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 231
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 233
    :cond_36
    return-void

    .line 211
    :cond_37
    if-eqz p2, :cond_3d

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    .line 214
    :cond_3d
    if-eqz p3, :cond_49

    .line 215
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, p3, v3}, Lcom/vlingo/client/util/SMSUtil;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;I)Z

    .line 217
    :cond_49
    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSSendingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 218
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, errorMessage:Ljava/lang/String;
    packed-switch p5, :pswitch_data_76

    .line 228
    :goto_57
    :pswitch_57
    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SEND_ERROR_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    iput-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    goto :goto_26

    .line 223
    :pswitch_5c
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

    .line 224
    goto :goto_57

    .line 219
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_57
        :pswitch_5c
    .end packed-switch
.end method

.method private notifySendComplete()V
    .registers 7

    .prologue
    .line 236
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->listener:Lcom/vlingo/client/car/sms/SMSSendingView$SMSSendingActionListener;

    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->contact:Lcom/vlingo/client/core/contacts/DisplayItem;

    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->message:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/vlingo/client/car/sms/SMSSendingView$SMSSendingActionListener;->onSmsSent(Lcom/vlingo/client/car/sms/SMSSendingView;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;ZLjava/lang/String;)V

    .line 237
    return-void
.end method

.method private sendAcceptedText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "message"
    .parameter "contactName"

    .prologue
    .line 132
    const-string v0, "sms:def"

    .line 133
    .local v0, acceptedType:Ljava/lang/String;
    new-instance v1, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;

    invoke-direct {v1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;-><init>()V

    .line 134
    .local v1, collection:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v2, text:Ljava/lang/StringBuffer;
    const-string v3, "<AcceptedText pt=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v3, "<Tag u=\"text\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string v3, "</Tag>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v3, "<Tag u=\"contact\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v3, "</Tag>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v3, "</AcceptedText>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->setAcceptedText(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->sendStatsToServer(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V

    .line 147
    return-void
.end method

.method private sendMessage()V
    .registers 15

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSSendingView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_92

    iget-boolean v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->cancelled:Z

    if-nez v2, :cond_92

    .line 152
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->overloadingBottomContainer:Z

    .line 153
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSSendingView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->overloadBottomContainerWithView(Landroid/view/View;)V

    .line 154
    iput-object v7, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->cancelButton:Landroid/widget/Button;

    .line 156
    const/4 v8, 0x0

    .line 164
    .local v8, newUri:Landroid/net/Uri;
    :try_start_20
    new-instance v12, Landroid/content/IntentFilter;

    const-string v2, "com.vlingo.client.samsung.actions.ACTION_SMS_SENT"

    invoke-direct {v12, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    .local v12, in:Landroid/content/IntentFilter;
    new-instance v2, Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;

    invoke-direct {v2, p0}, Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;-><init>(Lcom/vlingo/client/car/sms/SMSSendingView;)V

    iput-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;

    .line 166
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;

    invoke-virtual {v2, v3, v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->contact:Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, address:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->message:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vlingo/client/util/SMSUtil;->addMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v8

    .line 175
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.vlingo.client.samsung.actions.ACTION_SMS_SENT"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v13, sentIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSSendingView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v5, 0x1000

    invoke-static {v2, v3, v13, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 181
    .local v4, sentPendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 182
    .local v0, smsManager:Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->message:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 184
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->message:Ljava/lang/String;

    iget-object v3, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->contact:Lcom/vlingo/client/core/contacts/DisplayItem;

    iget-object v3, v3, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/vlingo/client/car/sms/SMSSendingView;->sendAcceptedText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_88} :catch_89

    .line 193
    .end local v0           #smsManager:Landroid/telephony/SmsManager;
    .end local v1           #address:Ljava/lang/String;
    .end local v4           #sentPendingIntent:Landroid/app/PendingIntent;
    .end local v8           #newUri:Landroid/net/Uri;
    .end local v12           #in:Landroid/content/IntentFilter;
    .end local v13           #sentIntent:Landroid/content/Intent;
    :cond_88
    :goto_88
    return-void

    .line 186
    .restart local v8       #newUri:Landroid/net/Uri;
    :catch_89
    move-exception v11

    .line 187
    .local v11, ex:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;

    move-object v5, p0

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lcom/vlingo/client/car/sms/SMSSendingView;->notifySMSSent(Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V

    goto :goto_88

    .line 190
    .end local v8           #newUri:Landroid/net/Uri;
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_92
    iget-boolean v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->cancelled:Z

    if-nez v2, :cond_88

    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    if-eqz v2, :cond_88

    .line 191
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->removeItemFromTask(Lcom/vlingo/client/car/CarScrollableItem;)V

    goto :goto_88
.end method

.method private unregisterListeners()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;

    if-eqz v0, :cond_12

    .line 117
    :try_start_5
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_10} :catch_22

    .line 122
    :goto_10
    iput-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->smsSendReceiver:Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;

    .line 124
    :cond_12
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v0, :cond_21

    .line 125
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 126
    iput-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 128
    :cond_21
    return-void

    .line 118
    :catch_22
    move-exception v0

    goto :goto_10
.end method


# virtual methods
.method public ignoreBackKey()Z
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/vlingo/client/car/sms/SMSSendingView$SMSSendingActionListener;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;)V
    .registers 4
    .parameter "listener"
    .parameter "contact"
    .parameter "message"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->listener:Lcom/vlingo/client/car/sms/SMSSendingView$SMSSendingActionListener;

    .line 68
    iput-object p2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->contact:Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 69
    iput-object p3, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->message:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public isRecognitionSupported()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public onDelegateAttached()V
    .registers 6

    .prologue
    .line 73
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 75
    const v1, 0x7f03003d

    .line 76
    .local v1, res:I
    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSSendingView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x7f0f0044

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->cancelButton:Landroid/widget/Button;

    .line 78
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->cancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/vlingo/client/car/sms/SMSSendingView$1;

    invoke-direct {v3, p0}, Lcom/vlingo/client/car/sms/SMSSendingView$1;-><init>(Lcom/vlingo/client/car/sms/SMSSendingView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->overloadingBottomContainer:Z

    .line 87
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->overloadBottomContainerWithView(Landroid/view/View;)V

    .line 89
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 90
    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v3, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SENDING_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 92
    new-instance v2, Lcom/vlingo/client/car/sms/SMSSendingView$2;

    invoke-direct {v2, p0}, Lcom/vlingo/client/car/sms/SMSSendingView$2;-><init>(Lcom/vlingo/client/car/sms/SMSSendingView;)V

    const-wide/16 v3, 0x4e2

    invoke-static {v2, v3, v4}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 97
    return-void
.end method

.method public onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/sms/SMSSendingView;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 271
    return-void
.end method

.method public onDemandDidPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/sms/SMSSendingView;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 275
    return-void
.end method

.method public onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/sms/SMSSendingView;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 279
    return-void
.end method

.method public onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 282
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 60
    return-void
.end method

.method public onHidden()V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSSendingView;->unregisterListeners()V

    .line 110
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->removeItemFromTask(Lcom/vlingo/client/car/CarScrollableItem;)V

    .line 111
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onHidden()V

    .line 112
    return-void
.end method

.method public onRemoved()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSSendingView;->unregisterListeners()V

    .line 105
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onRemoved()V

    .line 106
    return-void
.end method
