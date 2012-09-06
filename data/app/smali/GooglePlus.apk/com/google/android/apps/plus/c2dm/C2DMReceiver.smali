.class public Lcom/google/android/apps/plus/c2dm/C2DMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x4

    .line 93
    const-string v0, "focus_account_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, accountId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 95
    .local v1, currentAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->hasGaiaId()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {v7}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->stripParticipantIdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 99
    :cond_1d
    const-string v0, "C2DMReceiver"

    invoke-static {v0, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 100
    const-string v0, "C2DMReceiver"

    const-string v2, "c2dm message for wrong account"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2c
    :goto_2c
    return-void

    .line 104
    :cond_2d
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 105
    .local v10, type:Ljava/lang/String;
    if-nez v10, :cond_7d

    .line 106
    const-string v0, "message_timestamp"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, messageTimestamp:Ljava/lang/String;
    const-string v0, "conversation_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, conversationId:Ljava/lang/String;
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->C2DM_MESSAGE_RECEIVED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    const-string v3, "timestamp"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemActionWithData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;Ljava/lang/String;Ljava/lang/String;J)V

    .line 112
    const-string v0, "C2DMReceiver"

    invoke-static {v0, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 113
    const-string v0, "C2DMReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_79
    invoke-static {p1, v7, v8, v9}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->connectIfLoggedIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 117
    .end local v8           #conversationId:Ljava/lang/String;
    .end local v9           #messageTimestamp:Ljava/lang/String;
    :cond_7d
    const-string v0, "hangout"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 118
    invoke-static {p1, v1, p2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->onC2DMReceive(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V

    goto :goto_2c
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x4

    .line 70
    const-string v1, "registration_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, registration:Ljava/lang/String;
    const-string v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 72
    const-string v1, "C2DMReceiver"

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 73
    const-string v1, "C2DMReceiver"

    const-string v2, "c2dm error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1e
    const-string v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->handleC2DMRegistrationError(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    :cond_27
    :goto_27
    return-void

    .line 78
    :cond_28
    const-string v1, "unregistered"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 79
    const-string v1, "C2DMReceiver"

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 80
    const-string v1, "C2DMReceiver"

    const-string v2, "c2dm unregistration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_3f
    invoke-static {p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->handleC2DMUnregistration(Landroid/content/Context;)V

    goto :goto_27

    .line 84
    :cond_43
    if-eqz v0, :cond_27

    .line 85
    const-string v1, "C2DMReceiver"

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 86
    const-string v1, "C2DMReceiver"

    const-string v2, "c2dm registration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_54
    invoke-static {p1, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->handleC2DMRegistration(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_27
.end method

.method public static requestC2DMRegistrationId(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 123
    const-string v1, "C2DMReceiver"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 124
    const-string v1, "C2DMReceiver"

    const-string v2, "requestC2DMReg"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, registrationIntent:Landroid/content/Intent;
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    const-string v1, "sender"

    const-string v2, "bunch.eng.c2dm@gmail.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    return-void
.end method

.method public static unregisterC2DM(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 134
    const-string v1, "C2DMReceiver"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 135
    const-string v1, "C2DMReceiver"

    const-string v2, "unregisterC2DMReg"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, registrationIntent:Landroid/content/Intent;
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    const-string v1, "sender"

    const-string v2, "bunch.eng.c2dm@gmail.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 142
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 57
    const-string v0, "C2DMReceiver"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 58
    const-string v0, "C2DMReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/c2dm/C2DMReceiver;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/c2dm/C2DMReceiver;->setResultCode(I)V

    .line 67
    :cond_42
    :goto_42
    return-void

    .line 63
    :cond_43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/c2dm/C2DMReceiver;->handleMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/c2dm/C2DMReceiver;->setResultCode(I)V

    goto :goto_42
.end method
