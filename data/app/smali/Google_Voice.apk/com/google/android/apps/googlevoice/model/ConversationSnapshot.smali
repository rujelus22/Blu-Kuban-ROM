.class final Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;
.super Ljava/lang/Object;
.source "ConversationSnapshot.java"


# instance fields
.field private final calls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

.field private final conversationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 3
    .parameter "conversation"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->conversationId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->createPhoneCallsSnapshot([Lcom/google/android/apps/googlevoice/core/PhoneCall;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->calls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    .line 34
    return-void
.end method

.method private getLatestCall()Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .registers 4

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->calls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    array-length v0, v1

    .line 77
    .local v0, callCount:I
    if-lez v0, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->calls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private listCallsNewerThan(Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .registers 10
    .parameter "referenceCall"

    .prologue
    .line 87
    if-nez p1, :cond_5

    .line 88
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->calls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    .line 100
    :goto_4
    return-object v6

    .line 90
    :cond_5
    iget-object v2, p1, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->messageId:Ljava/lang/String;

    .line 91
    .local v2, messageId:Ljava/lang/String;
    iget-wide v4, p1, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    .line 92
    .local v4, timestamp:J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->calls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    array-length v6, v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_13
    if-ltz v1, :cond_27

    .line 94
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->calls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    aget-object v0, v6, v1

    .line 95
    .local v0, call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    iget-object v6, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    iget-wide v6, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_34

    .line 100
    .end local v0           #call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :cond_27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    goto :goto_4

    .line 98
    .restart local v0       #call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :cond_34
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v1, v1, -0x1

    goto :goto_13
.end method


# virtual methods
.method getConversationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method listNewCalls(J)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .registers 8
    .parameter "newerThanTime"

    .prologue
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->calls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_a
    if-ltz v1, :cond_16

    .line 61
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->calls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    aget-object v0, v3, v1

    .line 62
    .local v0, call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    iget-wide v3, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    cmp-long v3, v3, p1

    if-gtz v3, :cond_23

    .line 67
    .end local v0           #call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :cond_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    return-object v3

    .line 65
    .restart local v0       #call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :cond_23
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v1, v1, -0x1

    goto :goto_a
.end method

.method listNewCalls(Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .registers 3
    .parameter "referenceConversation"

    .prologue
    .line 49
    invoke-direct {p1}, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->getLatestCall()Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->listCallsNewerThan(Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    move-result-object v0

    return-object v0
.end method
