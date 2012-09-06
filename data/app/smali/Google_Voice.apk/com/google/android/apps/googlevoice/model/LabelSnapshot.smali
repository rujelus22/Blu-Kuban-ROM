.class public final Lcom/google/android/apps/googlevoice/model/LabelSnapshot;
.super Ljava/lang/Object;
.source "LabelSnapshot.java"


# instance fields
.field private final conversationSnapshots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:J

.field private final unreadConversationSnapshots:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;-><init>(Lcom/google/android/apps/googlevoice/core/Label;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 10
    .parameter "label"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->unreadConversationSnapshots:Ljava/util/Set;

    .line 32
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->conversationSnapshots:Ljava/util/Map;

    .line 50
    if-eqz p1, :cond_3f

    .line 51
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Label;->getTimestamp()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->timestamp:J

    .line 52
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1f
    if-ge v4, v5, :cond_43

    aget-object v1, v0, v4

    .line 53
    .local v1, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, conversationId:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;

    invoke-direct {v3, v1}, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;-><init>(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 55
    .local v3, conversationSnapshot:Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->conversationSnapshots:Ljava/util/Map;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 57
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->unreadConversationSnapshots:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 61
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v1           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v2           #conversationId:Ljava/lang/String;
    .end local v3           #conversationSnapshot:Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3f
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->timestamp:J

    .line 63
    :cond_43
    return-void
.end method

.method private findConversation(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;
    .registers 3
    .parameter "id"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->conversationSnapshots:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;

    return-object v0
.end method


# virtual methods
.method public getTimestamp()J
    .registers 3

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->timestamp:J

    return-wide v0
.end method

.method public listNewUnreadCalls(Lcom/google/android/apps/googlevoice/model/LabelSnapshot;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .registers 12
    .parameter "referenceSnapshot"

    .prologue
    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v4, newUnreadCalls:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v6

    .line 84
    .local v6, referenceSnapshotTimestamp:J
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-lez v8, :cond_41

    .line 85
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->unreadConversationSnapshots:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;

    .line 86
    .local v0, conversation:Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->getConversationId()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, conversationId:Ljava/lang/String;
    invoke-direct {p1, v1}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->findConversation(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;

    move-result-object v5

    .line 90
    .local v5, referenceConversation:Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;
    if-eqz v5, :cond_3c

    .line 91
    invoke-virtual {v0, v5}, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->listNewCalls(Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    move-result-object v2

    .line 95
    .local v2, conversationNewUnreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :goto_31
    array-length v8, v2

    if-lez v8, :cond_17

    .line 96
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_17

    .line 93
    .end local v2           #conversationNewUnreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :cond_3c
    invoke-virtual {v0, v6, v7}, Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;->listNewCalls(J)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    move-result-object v2

    .restart local v2       #conversationNewUnreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    goto :goto_31

    .line 100
    .end local v0           #conversation:Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;
    .end local v1           #conversationId:Ljava/lang/String;
    .end local v2           #conversationNewUnreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #referenceConversation:Lcom/google/android/apps/googlevoice/model/ConversationSnapshot;
    :cond_41
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    invoke-interface {v4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    return-object v8
.end method
