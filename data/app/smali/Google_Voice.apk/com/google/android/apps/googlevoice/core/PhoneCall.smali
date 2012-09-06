.class public Lcom/google/android/apps/googlevoice/core/PhoneCall;
.super Ljava/lang/Object;
.source "PhoneCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/core/PhoneCall$ComparatorByTimeAscending;,
        Lcom/google/android/apps/googlevoice/core/PhoneCall$Comparator;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Lcom/google/android/apps/googlevoice/core/PhoneCall$Comparator;

.field public static final COMPARATOR_BY_TIME_ASCENDING:Lcom/google/android/apps/googlevoice/core/PhoneCall$ComparatorByTimeAscending;


# instance fields
.field private apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

.field private contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

.field private conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

.field private transcript:Lcom/google/android/apps/googlevoice/core/Transcript;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/apps/googlevoice/core/PhoneCall$Comparator;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall$Comparator;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->COMPARATOR:Lcom/google/android/apps/googlevoice/core/PhoneCall$Comparator;

    .line 23
    new-instance v0, Lcom/google/android/apps/googlevoice/core/PhoneCall$ComparatorByTimeAscending;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall$ComparatorByTimeAscending;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->COMPARATOR_BY_TIME_ASCENDING:Lcom/google/android/apps/googlevoice/core/PhoneCall$ComparatorByTimeAscending;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;-><init>(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)V
    .registers 4
    .parameter "apiPhoneCall"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "apiPhoneCall"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 39
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasContact()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 40
    new-instance v0, Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getContact()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;-><init>(Lcom/google/grandcentral/api2/Api2$ApiContact;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V

    .line 43
    :cond_20
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasTranscript()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 45
    :try_start_26
    new-instance v0, Lcom/google/android/apps/googlevoice/core/Transcript;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getTranscript()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/core/Transcript;-><init>(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setTranscript(Lcom/google/android/apps/googlevoice/core/Transcript;)V
    :try_end_32
    .catch Lcom/google/android/apps/googlevoice/core/TranscriptException; {:try_start_26 .. :try_end_32} :catch_33

    .line 50
    :cond_32
    :goto_32
    return-void

    .line 46
    :catch_33
    move-exception v0

    goto :goto_32
.end method


# virtual methods
.method public getCallDuration()F
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->getDuration()F

    move-result v0

    .line 56
    :goto_e
    return v0

    :cond_f
    const/high16 v0, 0x7fc0

    goto :goto_e
.end method

.method public getCallDurationMillis()J
    .registers 5

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallDuration()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;
    .registers 3

    .prologue
    .line 65
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->hasType()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 66
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    .line 67
    .local v0, type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;
    if-eqz v0, :cond_15

    .line 71
    .end local v0           #type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;
    :goto_14
    return-object v0

    :cond_15
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_14
.end method

.method public getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDetailFormat()I
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->getDetailFormat(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)I

    move-result v0

    return v0
.end method

.method public getLowerCaseTypeName()I
    .registers 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->getLowerCaseTypeName(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)I

    move-result v0

    return v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->getMessageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSubscriberNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->getDid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeFormat()I
    .registers 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->getTimeFormat(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)I

    move-result v0

    return v0
.end method

.method public getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    return-object v0
.end method

.method public getTypeName()I
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->getTypeName(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)I

    move-result v0

    return v0
.end method

.method public isAudibleRecording()Z
    .registers 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isOutgoing()Z
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->isOutgoing(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)Z

    move-result v0

    return v0
.end method

.method public isTextMessage()Z
    .registers 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isTranscriptEdited()Z
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Transcript;->isEdited()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setCallDuration(F)V
    .registers 6
    .parameter "callDuration"

    .prologue
    .line 137
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    :goto_8
    const-string v1, "callDuration >= 0.0"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setDuration(F)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 139
    return-void

    .line 137
    :cond_13
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setCallType(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)V
    .registers 4
    .parameter "callType"

    .prologue
    .line 142
    const-string v0, "callType"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setType(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 144
    return-void
.end method

.method public setContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V
    .registers 2
    .parameter "contactInfo"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 148
    return-void
.end method

.method public setConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 2
    .parameter "conversation"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 152
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 156
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .registers 3
    .parameter "messageText"

    .prologue
    .line 159
    if-nez p1, :cond_8

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->clearMessageText()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 164
    :goto_7
    return-void

    .line 162
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setMessageText(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    goto :goto_7
.end method

.method public setStartTime(J)V
    .registers 5
    .parameter "startTime"

    .prologue
    .line 167
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    :goto_7
    const-string v1, "startTime >= 0"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setStartTime(J)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 169
    return-void

    .line 167
    :cond_12
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;)V
    .registers 4
    .parameter "status"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setStatus(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 173
    return-void
.end method

.method public setSubscriberNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "subscriberNumber"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setDid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 177
    return-void
.end method

.method public setTranscript(Lcom/google/android/apps/googlevoice/core/Transcript;)V
    .registers 2
    .parameter "transcript"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    .line 181
    return-void
.end method

.method public toApiPhoneCall()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->toApiContactInfo()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setContact(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    if-eqz v0, :cond_1a

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Transcript;->toApiTranscriptSimple()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->setTranscript(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    .line 188
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->apiPhoneCallBuilder:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneCall[msg id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
