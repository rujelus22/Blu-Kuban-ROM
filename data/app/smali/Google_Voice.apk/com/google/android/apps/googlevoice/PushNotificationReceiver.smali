.class public Lcom/google/android/apps/googlevoice/PushNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushNotificationReceiver.java"


# static fields
.field private static final EXTRA_CALL_CONTENT:Ljava/lang/String; = "call_content"

.field private static final EXTRA_CALL_ID:Ljava/lang/String; = "call_id"

.field private static final EXTRA_CALL_TYPE:Ljava/lang/String; = "call_type"

.field private static final EXTRA_CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field private static final EXTRA_SENDER_ADDRESS:Ljava/lang/String; = "sender_address"

.field public static final NOTIFICATION_ID_KEY:Ljava/lang/String; = "notification_id"


# instance fields
.field private checkinHelper:Lcom/google/android/apps/googlevoice/CheckinHelper;

.field private clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

.field private unknownUser:Ljava/lang/String;

.field private voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->unknownUser:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCheckinHelper()Lcom/google/android/apps/googlevoice/CheckinHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->checkinHelper:Lcom/google/android/apps/googlevoice/CheckinHelper;

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLocalModelView()Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getContextProxy()Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->call_log_unknown_username:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->unknownUser:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private createNewConversation(Landroid/content/Intent;)Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 7
    .parameter "intent"

    .prologue
    .line 154
    const-string v4, "conversation_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, conversationId:Ljava/lang/String;
    const-string v4, "call_type"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, callType:Ljava/lang/String;
    if-eqz v3, :cond_10

    if-nez v1, :cond_12

    .line 159
    :cond_10
    const/4 v2, 0x0

    .line 170
    :cond_11
    :goto_11
    return-object v2

    .line 162
    :cond_12
    new-instance v2, Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-direct {v2}, Lcom/google/android/apps/googlevoice/core/Conversation;-><init>()V

    .line 163
    .local v2, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/core/Conversation;->setConversationId(Ljava/lang/String;)V

    .line 164
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/apps/googlevoice/core/Conversation;->setIsRead(Z)V

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getLabelForCallType(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, additionalLabel:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 168
    invoke-virtual {v2, v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->addLabel(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private createNewPhoneCall(Landroid/content/Intent;)Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 10
    .parameter "intent"

    .prologue
    .line 174
    const-string v6, "sender_address"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, senderAddress:Ljava/lang/String;
    const-string v6, "call_type"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, callType:Ljava/lang/String;
    const-string v6, "call_content"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, message:Ljava/lang/String;
    const-string v6, "call_id"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, messageId:Ljava/lang/String;
    if-eqz v4, :cond_1c

    if-nez v1, :cond_1e

    .line 181
    :cond_1c
    const/4 v0, 0x0

    .line 209
    :goto_1d
    return-object v0

    .line 185
    :cond_1e
    if-nez v5, :cond_22

    .line 186
    const-string v5, ""

    .line 189
    :cond_22
    if-nez v3, :cond_26

    .line 190
    const-string v3, ""

    .line 193
    :cond_26
    new-instance v0, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;-><init>()V

    .line 194
    .local v0, call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setCallType(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)V

    .line 195
    invoke-virtual {v0, v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setMessageId(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setMessageText(Ljava/lang/String;)V

    .line 197
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setCallDuration(F)V

    .line 198
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v6}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setStartTime(J)V

    .line 199
    sget-object v6, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->UNREAD:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    invoke-virtual {v0, v6}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setStatus(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;)V

    .line 200
    invoke-virtual {v0, v5}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setSubscriberNumber(Ljava/lang/String;)V

    .line 202
    new-instance v2, Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-direct {v2}, Lcom/google/android/apps/googlevoice/core/ContactInfo;-><init>()V

    .line 203
    .local v2, contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    invoke-virtual {v2, v5}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 204
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v6, v2}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v2

    .line 205
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6e

    .line 206
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->unknownUser:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalName(Ljava/lang/String;)V

    .line 208
    :cond_6e
    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V

    goto :goto_1d
.end method

.method private createOrGetConversation(Landroid/content/Intent;)Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 12
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 112
    const-string v9, "conversation_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, conversationId:Ljava/lang/String;
    if-nez v3, :cond_b

    move-object v2, v8

    .line 150
    :goto_a
    return-object v2

    .line 118
    :cond_b
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v9, v3}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v2

    .line 120
    .local v2, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-nez v2, :cond_1b

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->createNewConversation(Landroid/content/Intent;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v2

    .line 122
    if-nez v2, :cond_1b

    move-object v2, v8

    .line 124
    goto :goto_a

    .line 128
    :cond_1b
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->createNewPhoneCall(Landroid/content/Intent;)Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v1

    .line 129
    .local v1, call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-nez v1, :cond_23

    move-object v2, v8

    .line 131
    goto :goto_a

    .line 134
    :cond_23
    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 135
    invoke-virtual {v2, v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->addPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    .line 136
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/google/android/apps/googlevoice/core/Conversation;->setConversationTime(J)V

    .line 137
    const-string v8, "inbox"

    invoke-virtual {v2, v8}, Lcom/google/android/apps/googlevoice/core/Conversation;->addLabel(Ljava/lang/String;)V

    .line 138
    const-string v8, "all"

    invoke-virtual {v2, v8}, Lcom/google/android/apps/googlevoice/core/Conversation;->addLabel(Ljava/lang/String;)V

    .line 139
    const-string v8, "unread"

    invoke-virtual {v2, v8}, Lcom/google/android/apps/googlevoice/core/Conversation;->addLabel(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 143
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLabels()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_4b
    if-ge v4, v7, :cond_5b

    aget-object v6, v0, v4

    .line 144
    .local v6, labelName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v8, v6}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v5

    .line 145
    .local v5, label:Lcom/google/android/apps/googlevoice/core/Label;
    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Label;->incrementUnreadCount()V

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 149
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #label:Lcom/google/android/apps/googlevoice/core/Label;
    .end local v6           #labelName:Ljava/lang/String;
    .end local v7           #len$:I
    :cond_5b
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/google/android/apps/googlevoice/core/Conversation;->setIsRead(Z)V

    goto :goto_a
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 56
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSignedIn(Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 57
    const-string v2, "Ignoring notfication because user is not signed in."

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->i(Ljava/lang/String;)V

    .line 103
    :cond_16
    :goto_16
    return-void

    .line 60
    :cond_17
    const-string v2, "notification_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, notificationId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->checkinHelper:Lcom/google/android/apps/googlevoice/CheckinHelper;

    sget-object v3, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->TICKLE_RECEIVED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    invoke-interface {v2, v1, v3}, Lcom/google/android/apps/googlevoice/CheckinHelper;->checkin(Ljava/lang/String;Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;)V

    .line 64
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_38

    .line 65
    const-string v2, "PushNotificationReceiver.onReceive(Context=\'%s\', Intent=\'%s\')"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 69
    :cond_38
    const-string v2, "com.google.android.apps.googlevoice.INBOX_NOTIFICATION"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 70
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getNotificationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 71
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setNotificationId(Ljava/lang/String;)V

    .line 72
    sget-object v2, Lcom/google/android/apps/googlevoice/AppProperties;->ANDROID_TICKLER_V2:Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/AppProperties;->get()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 73
    const-string v2, "A notification tickle arrived."

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->createOrGetConversation(Landroid/content/Intent;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 75
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v0, :cond_7f

    .line 76
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->notifyListenersUpdateStarted()V

    .line 77
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    new-array v3, v6, [Lcom/google/android/apps/googlevoice/core/Conversation;

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 78
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->notifyListenersUpdateCompleted()V

    .line 81
    .end local v0           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_7f
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2, v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setNotificatinoUpdateCompleted(Z)V

    .line 82
    invoke-static {p1, v1}, Lcom/google/android/apps/googlevoice/UpdateService;->requestBackgroundUpdate(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    :cond_87
    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->setResultCode(I)V

    goto :goto_16

    .line 88
    :cond_8b
    const-string v2, "com.google.android.apps.googlevoice.GOOGLE_VOICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 89
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_9c

    .line 90
    const-string v2, "Starting updateService due to CATEGORY_GOOGLE_VOICE notification"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 92
    :cond_9c
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2, v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setNotificatinoUpdateCompleted(Z)V

    .line 93
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setNotificationId(Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/UpdateService;->requestBackgroundUpdateForNotification(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/PushNotificationReceiver;->setResultCode(I)V

    goto/16 :goto_16

    .line 100
    :cond_b0
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_16

    .line 101
    const-string v2, "Ignoring bad remote intent"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_16
.end method
