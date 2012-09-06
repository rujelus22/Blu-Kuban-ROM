.class Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
.super Ljava/lang/Object;
.source "SmsConversationOutbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$1;,
        Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;,
        Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;,
        Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsByTimeAscendingComparator;
    }
.end annotation


# static fields
.field public static final COMPARATOR_BY_TIME_ASCENDING:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsByTimeAscendingComparator; = null

.field public static final STATE_HAS_NO_SMS_THAT_IS_BEING_SENT:I = 0x3e8

.field public static final STATE_HAS_SMS_THAT_IS_BEING_SENT:I = 0x3e9


# instance fields
.field private conversationId:Ljava/lang/String;

.field private final exceptionsByMessageId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingSmsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/sms/PendingSms;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingSmses:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/google/android/apps/googlevoice/sms/PendingSms;",
            ">;"
        }
    .end annotation
.end field

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsByTimeAscendingComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsByTimeAscendingComparator;-><init>(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$1;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->COMPARATOR_BY_TIME_ASCENDING:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsByTimeAscendingComparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "conversationId"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->conversationId:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->COMPARATOR_BY_TIME_ASCENDING:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsByTimeAscendingComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmses:Ljava/util/SortedSet;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->exceptionsByMessageId:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmsById:Ljava/util/HashMap;

    .line 60
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->state:I

    .line 61
    return-void
.end method


# virtual methods
.method public declared-synchronized addExceptionForSms(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .parameter "smsPhoneCallId"
    .parameter "exception"

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->exceptionsByMessageId:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addSms(Lcom/google/android/apps/googlevoice/sms/PendingSms;)V
    .registers 5
    .parameter "pendingSms"

    .prologue
    .line 79
    monitor-enter p0

    if-nez p1, :cond_e

    .line 80
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Attempt to add a null SMS to an outbox."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 79
    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 82
    :cond_e
    :try_start_e
    iget-object v0, p1, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 83
    .local v0, smsPhoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-nez v0, :cond_1a

    .line 84
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Attempt to add a null SMS to an outbox."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmsById:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmses:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_b

    .line 88
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized containsSmsWithId(Ljava/lang/String;)Z
    .registers 3
    .parameter "smsPhoneCallId"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmsById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllSms()[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .registers 3

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmses:Ljava/util/SortedSet;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmses:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/sms/PendingSms;

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getExceptionForSms(Ljava/lang/String;)Ljava/lang/Exception;
    .registers 3
    .parameter "smsPhoneCallId"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->exceptionsByMessageId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExceptionsByPhoneCallId()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->exceptionsByMessageId:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOldestSms()Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .registers 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmses:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    move-result v0

    if-eqz v0, :cond_c

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmses:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_a

    .line 70
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSms(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .registers 3
    .parameter "messageId"

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmsById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()I
    .registers 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->state:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmsById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeExceptionForSms(Ljava/lang/String;)V
    .registers 3
    .parameter "smsPhoneCallId"

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->exceptionsByMessageId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSms(Ljava/lang/String;)V
    .registers 4
    .parameter "messageId"

    .prologue
    .line 92
    monitor-enter p0

    if-eqz p1, :cond_17

    .line 93
    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmsById:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/sms/PendingSms;

    .line 94
    .local v0, pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    if-eqz v0, :cond_12

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->pendingSmses:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 98
    :cond_12
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->exceptionsByMessageId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 100
    .end local v0           #pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_17
    monitor-exit p0

    return-void

    .line 92
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendHasFailed(Ljava/lang/String;)Z
    .registers 3
    .parameter "smsPhoneCallId"

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->exceptionsByMessageId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized serialize()Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;
    .registers 9

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;-><init>()V

    .line 170
    .local v0, data:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getConversationId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;->conversationId:Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getState()I

    move-result v6

    iput v6, v0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;->state:I

    .line 172
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getAllSms()[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v5

    .line 173
    .local v5, smses:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    array-length v6, v5

    new-array v6, v6, [Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;

    iput-object v6, v0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;->pendingSmses:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;

    .line 174
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1c
    array-length v6, v5

    if-ge v2, v6, :cond_68

    .line 175
    aget-object v3, v5, v2

    .line 176
    .local v3, sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    new-instance v4, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;

    invoke-direct {v4}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;-><init>()V

    .line 177
    .local v4, smsData:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;
    iget-object v6, v3, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;->messageId:Ljava/lang/String;

    .line 178
    iget-object v6, v3, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->toApiPhoneCall()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->toByteArray()[B

    move-result-object v6

    iput-object v6, v4, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;->phoneCall:[B

    .line 179
    iget-wide v6, v3, Lcom/google/android/apps/googlevoice/sms/PendingSms;->requestId:J

    iput-wide v6, v4, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;->requestId:J

    .line 180
    iget-object v6, v4, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;->messageId:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getExceptionForSms(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 181
    .local v1, exception:Ljava/lang/Exception;
    if-eqz v1, :cond_61

    instance-of v6, v1, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v6, :cond_61

    .line 182
    check-cast v1, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .end local v1           #exception:Ljava/lang/Exception;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->getNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;->exceptionStatus:Ljava/lang/Integer;

    .line 186
    :goto_5a
    iget-object v6, v0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;->pendingSmses:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;

    aput-object v4, v6, v2

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 184
    .restart local v1       #exception:Ljava/lang/Exception;
    :cond_61
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;->exceptionStatus:Ljava/lang/Integer;
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_65

    goto :goto_5a

    .line 169
    .end local v0           #data:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;
    .end local v1           #exception:Ljava/lang/Exception;
    .end local v2           #index:I
    .end local v3           #sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v4           #smsData:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;
    .end local v5           #smses:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :catchall_65
    move-exception v6

    monitor-exit p0

    throw v6

    .line 189
    .restart local v0       #data:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;
    .restart local v2       #index:I
    .restart local v5       #smses:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_68
    monitor-exit p0

    return-object v0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .registers 2
    .parameter "conversationId"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->conversationId:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public declared-synchronized setState(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->state:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 135
    monitor-exit p0

    return-void

    .line 134
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
