.class public Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;
.super Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;
.source "SmsAutoSendHandler.java"


# static fields
.field public static final ID_AUTH_FAILED:I = 0x3

.field public static final ID_AUTH_TOKEN_INVALIDATED:I = 0x4

.field public static final ID_RESEND_SMS_REQUEST:I = 0x2

.field public static final ID_SEND_TEXT:I = 0x0

.field public static final ID_SMS_REQUEST:I = 0x1


# instance fields
.field private final idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private final requestIdGenerator:Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

.field private final smsAutoSender:Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;

.field private final voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private final voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;Lcom/google/android/apps/common/log/GLog;Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;)V
    .registers 8
    .parameter "smsAutoSender"
    .parameter "log"
    .parameter "voiceService"
    .parameter "voicePreferences"
    .parameter "requestIdGenerator"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->smsAutoSender:Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;

    .line 49
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->log:Lcom/google/android/apps/common/log/GLog;

    .line 50
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 51
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 52
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->requestIdGenerator:Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

    .line 53
    new-instance v0, Lcom/google/android/apps/googlevoice/IdNumberHelper;

    const-class v1, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;

    invoke-direct {v0, p2, v1}, Lcom/google/android/apps/googlevoice/IdNumberHelper;-><init>(Lcom/google/android/apps/common/log/GLog;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

    .line 54
    return-void
.end method

.method private createSendSmsRpcFromData(Ljava/lang/Object;)Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    .registers 12
    .parameter "messageObj"

    .prologue
    .line 154
    check-cast p1, [Ljava/lang/String;

    .end local p1
    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    .line 155
    .local v1, data:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-direct {p0, v8}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->parseDestinations(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, destinations:[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v6, v1, v8

    .line 158
    .local v6, messageText:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createSendSmsRpc()Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-result-object v7

    .line 159
    .local v7, sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->setSubscriberNumber(Ljava/lang/String;)V

    .line 160
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_21
    if-ge v4, v5, :cond_31

    aget-object v2, v0, v4

    .line 161
    .local v2, destination:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->requestIdGenerator:Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

    invoke-interface {v8, v2, v6}, Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;->generate(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    invoke-interface {v7, v2, v8, v9}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->addDestination(Ljava/lang/String;J)V

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 164
    .end local v2           #destination:Ljava/lang/String;
    :cond_31
    invoke-interface {v7, v6}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->setMessage(Ljava/lang/String;)V

    .line 165
    return-object v7
.end method

.method private parseDestinations(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "destinations"

    .prologue
    .line 43
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "message"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 58
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Lcom/google/android/apps/googlevoice/IdNumberHelper;->getNameForValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 60
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_e0

    .line 145
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled event id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 147
    :cond_4b
    :goto_4b
    return-void

    .line 64
    :pswitch_4c
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->smsAutoSender:Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;

    invoke-interface {v5, v10}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;->setInProgress(Z)V

    .line 65
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->createSendSmsRpcFromData(Ljava/lang/Object;)Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-result-object v4

    .line 66
    .local v4, sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    invoke-virtual {p0, v10, v4}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->submit(Landroid/os/Message;)V

    goto :goto_4b

    .line 72
    .end local v4           #sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    :pswitch_5f
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    .line 73
    .restart local v4       #sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    if-eqz v4, :cond_4b

    .line 74
    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->hasException()Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 75
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v6, "Send text failed."

    invoke-interface {v5, v6}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x1

    .line 81
    .local v2, hasFinished:Z
    const/4 v0, 0x1

    .line 82
    .local v0, autoSenderStatusCode:I
    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 83
    .local v1, e:Ljava/lang/Exception;
    instance-of v5, v1, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v5, :cond_89

    .line 84
    check-cast v1, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .end local v1           #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->getNumber()I

    move-result v3

    .line 85
    .local v3, rpcStatusCode:I
    sparse-switch v3, :sswitch_data_ee

    .line 112
    .end local v3           #rpcStatusCode:I
    :cond_89
    :goto_89
    if-eqz v2, :cond_4b

    .line 113
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->smsAutoSender:Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;

    invoke-interface {v5, v9}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;->setInProgress(Z)V

    .line 114
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->smsAutoSender:Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;

    invoke-interface {v5, v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;->onSendFinished(I)V

    goto :goto_4b

    .line 87
    .restart local v3       #rpcStatusCode:I
    :sswitch_96
    const/4 v0, 0x2

    .line 88
    goto :goto_89

    .line 91
    :sswitch_98
    const/4 v0, 0x3

    .line 92
    goto :goto_89

    .line 102
    :sswitch_9a
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->smsAutoSender:Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;->invalidateAuthToken()V

    .line 103
    const/4 v2, 0x0

    .line 104
    goto :goto_89

    .line 117
    .end local v0           #autoSenderStatusCode:I
    .end local v2           #hasFinished:Z
    .end local v3           #rpcStatusCode:I
    :cond_a1
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v6, "Send text succeeded."

    invoke-interface {v5, v6}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 118
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->smsAutoSender:Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;

    invoke-interface {v5, v9}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;->setInProgress(Z)V

    .line 119
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->smsAutoSender:Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;

    invoke-interface {v5, v9}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;->onSendFinished(I)V

    .line 121
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->requestIdGenerator:Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;->reset()V

    goto :goto_4b

    .line 128
    .end local v4           #sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    :pswitch_b8
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->smsAutoSender:Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;->reauthenticate()V

    goto :goto_4b

    .line 133
    :pswitch_be
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->createSendSmsRpcFromData(Ljava/lang/Object;)Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-result-object v4

    .line 134
    .restart local v4       #sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    invoke-virtual {p0, v10, v4}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->submit(Landroid/os/Message;)V

    goto :goto_4b

    .line 139
    .end local v4           #sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    :pswitch_cc
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v6, "Send failed because of authentication error; returning..."

    invoke-interface {v5, v6}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 140
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->smsAutoSender:Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;

    invoke-interface {v5, v9}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;->setInProgress(Z)V

    .line 141
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;->smsAutoSender:Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;->onSendFinished(I)V

    goto/16 :goto_4b

    .line 60
    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_5f
        :pswitch_be
        :pswitch_cc
        :pswitch_b8
    .end packed-switch

    .line 85
    :sswitch_data_ee
    .sparse-switch
        0x2 -> :sswitch_9a
        0x10 -> :sswitch_96
        0x11 -> :sswitch_98
    .end sparse-switch
.end method
