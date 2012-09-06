.class public Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;
.super Ljava/lang/Object;
.source "VoicemailPhoneCallsGetterImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final FETCHING_TIMEOUT:I = 0x2710

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field private static final WAIT_TIME_PER_LOOP_MS:J = 0x64L


# instance fields
.field private final context:Landroid/content/Context;

.field private final conversationFetcher:Lcom/google/android/apps/googlevoice/ConversationFetcher;

.field private final dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private downloadsOutstanding:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private final voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/DependencyResolver;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/ConversationFetcher;Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;Landroid/content/Context;Lcom/google/android/apps/googlevoice/vvm/database/SyncState;)V
    .registers 9
    .parameter "dependencyResolver"
    .parameter "voiceModel"
    .parameter "conversationFetcher"
    .parameter "voicemailProviderHelper"
    .parameter "context"
    .parameter "syncState"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->downloadsOutstanding:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 65
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 66
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->conversationFetcher:Lcom/google/android/apps/googlevoice/ConversationFetcher;

    .line 67
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    .line 68
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->context:Landroid/content/Context;

    .line 69
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->decrementOutstandingDownloads()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;)Lcom/google/android/apps/googlevoice/model/VoiceModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    return-object v0
.end method

.method private buildVoicemail(Lcom/google/android/apps/googlevoice/core/Conversation;)Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    .registers 8
    .parameter "conversation"

    .prologue
    .line 227
    if-nez p1, :cond_4

    .line 228
    const/4 v4, 0x0

    .line 252
    :goto_3
    return-object v4

    .line 230
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLastPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v2

    .line 231
    .local v2, phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v4

    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    if-eq v4, v5, :cond_18

    .line 232
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot build Voicemail from non-voicemail PhoneCall."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_18
    invoke-static {}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->createEmptyBuilder()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v0

    .line 235
    .local v0, builder:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallDuration()F

    move-result v4

    float-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setDuration(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    .line 237
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setHasContent(Z)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    .line 240
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setSourceData(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    .line 241
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setIsRead(Z)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    .line 242
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v1

    .line 243
    .local v1, info:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    if-eqz v1, :cond_49

    .line 244
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 246
    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setNumber(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    .line 251
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_49
    :goto_49
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setTimestamp(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    .line 252
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->build()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;

    move-result-object v4

    goto :goto_3

    .line 248
    .restart local v3       #phoneNumber:Ljava/lang/String;
    :cond_55
    const-string v4, "-1"

    invoke-virtual {v0, v4}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setNumber(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    goto :goto_49
.end method

.method private countInboxConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)I
    .registers 8
    .parameter "conversations"

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, count:I
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v4, :cond_17

    aget-object v1, v0, v3

    .line 116
    .local v1, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v1, :cond_14

    const-string v5, "inbox"

    invoke-virtual {v1, v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasLabel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 115
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 120
    .end local v1           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_17
    return v2
.end method

.method private decrementOutstandingDownloads()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->downloadsOutstanding:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 268
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_25

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->downloadsOutstanding:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requests now outstanding."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 271
    :cond_25
    return-void
.end method

.method private incrementOutstandingDownloads()V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->downloadsOutstanding:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 261
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_25

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->downloadsOutstanding:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requests outstanding."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 264
    :cond_25
    return-void
.end method

.method public static toPhoneCallArray([Lcom/google/android/apps/googlevoice/core/Conversation;)[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 4
    .parameter "conversations"

    .prologue
    .line 213
    array-length v2, p0

    new-array v1, v2, [Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 214
    .local v1, voicemailPhoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_16

    .line 215
    aget-object v2, p0, v0

    if-eqz v2, :cond_13

    .line 217
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLastPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v2

    aput-object v2, v1, v0

    .line 214
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 220
    :cond_16
    return-object v1
.end method


# virtual methods
.method public downloadContent(Ljava/lang/String;)V
    .registers 7
    .parameter "conversationId"

    .prologue
    .line 143
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    invoke-interface {v3, p1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->findVoicemailBySourceData(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;

    move-result-object v2

    .line 145
    .local v2, voicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    if-eqz v2, :cond_e

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasContent()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 146
    :cond_e
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_28

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voicemail content already present: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 200
    :cond_28
    :goto_28
    return-void

    .line 151
    :cond_29
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceRecordingRequest()Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

    move-result-object v1

    .line 153
    .local v1, voiceRecordingRequest:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;
    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, messageId:Ljava/lang/String;
    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;->setCallId(Ljava/lang/String;)V

    .line 155
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_50

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting file for voicemail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 158
    :cond_50
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->incrementOutstandingDownloads()V

    .line 159
    new-instance v3, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl$1;-><init>(Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;Ljava/lang/String;Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V

    invoke-interface {v1, v3}, Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;->submit(Ljava/lang/Runnable;)V

    goto :goto_28
.end method

.method public fetchVoicemailConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 13

    .prologue
    const/16 v11, 0xa

    .line 74
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const-string v8, "voicemail"

    invoke-interface {v7, v8}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v6

    .line 76
    .local v6, voicemailLabel:Lcom/google/android/apps/googlevoice/core/Label;
    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v7

    array-length v1, v7

    .line 77
    .local v1, numberAlreadyInModel:I
    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->countInboxConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)I

    move-result v2

    .line 78
    .local v2, numberInboxAlreadyInModel:I
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->getNumberOfVoicemails()I

    move-result v7

    sub-int v3, v7, v1

    .line 79
    .local v3, numberToFetch:I
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_4d

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Number of voicemails in model: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Number of voicemails in total: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 83
    :cond_4d
    if-ge v2, v11, :cond_96

    if-lez v3, :cond_96

    .line 84
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->conversationFetcher:Lcom/google/android/apps/googlevoice/ConversationFetcher;

    invoke-interface {v7, v1, v3}, Lcom/google/android/apps/googlevoice/ConversationFetcher;->fetch(II)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 88
    .local v4, startTime:J
    :goto_5a
    if-ge v2, v11, :cond_96

    if-lez v3, :cond_96

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x2710

    add-long/2addr v9, v4

    cmp-long v7, v7, v9

    if-lez v7, :cond_6d

    .line 91
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 110
    .end local v4           #startTime:J
    :goto_6c
    return-object v7

    .line 94
    .restart local v4       #startTime:J
    :cond_6d
    const-wide/16 v7, 0x64

    :try_start_6f
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 95
    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v7

    array-length v1, v7

    .line 96
    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->countInboxConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)I

    move-result v2

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->getNumberOfVoicemails()I
    :try_end_82
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6f .. :try_end_82} :catch_86
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_82} :catch_88

    move-result v7

    sub-int v3, v7, v1

    goto :goto_5a

    .line 98
    :catch_86
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_5a

    .line 104
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_88
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v7, "VoicemailPhoneCallsGetter interrupted while sleeping!"

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5a

    .line 110
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v4           #startTime:J
    :cond_96
    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v7

    goto :goto_6c
.end method

.method public getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 3
    .parameter "id"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadsOutstanding()I
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->downloadsOutstanding:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getNumberOfVoicemails()I
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const-string v1, "voicemail"

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Label;->getTotalCount()I

    move-result v0

    return v0
.end method

.method public declared-synchronized insertVoicemailFromConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 6
    .parameter "conversation"

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, conversationId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    invoke-interface {v2, v0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->findVoicemailBySourceData(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;

    move-result-object v2

    if-nez v2, :cond_21

    .line 133
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->buildVoicemail(Lcom/google/android/apps/googlevoice/core/Conversation;)Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;

    move-result-object v1

    .line 134
    .local v1, voicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    if-eqz v1, :cond_21

    .line 135
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    invoke-interface {v2, v1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->insert(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)Landroid/net/Uri;

    .line 136
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetterImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/google/android/apps/googlevoice/vvm/database/SyncState;->insertConversation(Ljava/lang/String;Z)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 139
    .end local v1           #voicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    :cond_21
    monitor-exit p0

    return-void

    .line 131
    .end local v0           #conversationId:Ljava/lang/String;
    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2
.end method
