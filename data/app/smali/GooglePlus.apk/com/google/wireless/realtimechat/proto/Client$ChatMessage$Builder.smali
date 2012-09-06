.class public final Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ChatMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;",
        "Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ChatMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private content_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Content;",
            ">;"
        }
    .end annotation
.end field

.field private conversationId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private messageClientId_:Ljava/lang/Object;

.field private receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private retry_:Z

.field private senderId_:Ljava/lang/Object;

.field private shardingHint_:Ljava/lang/Object;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1875
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2119
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->messageClientId_:Ljava/lang/Object;

    .line 2155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->id_:Ljava/lang/Object;

    .line 2212
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->conversationId_:Ljava/lang/Object;

    .line 2248
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->senderId_:Ljava/lang/Object;

    .line 2284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    .line 2373
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->shardingHint_:Ljava/lang/Object;

    .line 2430
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    .line 2454
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 1876
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->maybeForceBuilderInitialization()V

    .line 1877
    return-void
.end method

.method static synthetic access$1900()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 1

    .prologue
    .line 1870
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 1

    .prologue
    .line 1882
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContentIsMutable()V
    .registers 3

    .prologue
    .line 2287
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 2288
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    .line 2289
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2291
    :cond_17
    return-void
.end method

.method private ensureRecipientIdIsMutable()V
    .registers 3

    .prologue
    .line 2456
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_17

    .line 2457
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 2458
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2460
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1880
    return-void
.end method


# virtual methods
.method public addAllContent(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$Content;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 2354
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$Content;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureContentIsMutable()V

    .line 2355
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2357
    return-object p0
.end method

.method public addAllRecipientId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 2492
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureRecipientIdIsMutable()V

    .line 2493
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2495
    return-object p0
.end method

.method public addContent(ILcom/google/wireless/realtimechat/proto/Data$Content$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2347
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureContentIsMutable()V

    .line 2348
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2350
    return-object p0
.end method

.method public addContent(ILcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2330
    if-nez p2, :cond_8

    .line 2331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2333
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureContentIsMutable()V

    .line 2334
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2336
    return-object p0
.end method

.method public addContent(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 2340
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureContentIsMutable()V

    .line 2341
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2343
    return-object p0
.end method

.method public addContent(Lcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2320
    if-nez p1, :cond_8

    .line 2321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2323
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureContentIsMutable()V

    .line 2324
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2326
    return-object p0
.end method

.method public addRecipientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2482
    if-nez p1, :cond_8

    .line 2483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2485
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureRecipientIdIsMutable()V

    .line 2486
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 2488
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 3

    .prologue
    .line 1919
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    .line 1920
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1921
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1923
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 6

    .prologue
    .line 1937
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 1938
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1939
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1940
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1941
    or-int/lit8 v2, v2, 0x1

    .line 1943
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->messageClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->messageClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$2102(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1945
    or-int/lit8 v2, v2, 0x2

    .line 1947
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$2202(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1949
    or-int/lit8 v2, v2, 0x4

    .line 1951
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$2302(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;J)J

    .line 1952
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1953
    or-int/lit8 v2, v2, 0x8

    .line 1955
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$2402(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 1957
    or-int/lit8 v2, v2, 0x10

    .line 1959
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$2502(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 1961
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    .line 1962
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1964
    :cond_5d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$2602(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/util/List;)Ljava/util/List;

    .line 1965
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 1966
    or-int/lit8 v2, v2, 0x20

    .line 1968
    :cond_6a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->shardingHint_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->shardingHint_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$2702(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_77

    .line 1970
    or-int/lit8 v2, v2, 0x40

    .line 1972
    :cond_77
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->retry_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->retry_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$2802(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Z)Z

    .line 1973
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_84

    .line 1974
    or-int/lit16 v2, v2, 0x80

    .line 1976
    :cond_84
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$2902(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    .line 1977
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_a0

    .line 1978
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 1980
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1982
    :cond_a0
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$3002(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 1983
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$3102(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;I)I

    .line 1984
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3

    .prologue
    .line 1886
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1887
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->messageClientId_:Ljava/lang/Object;

    .line 1888
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1889
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->id_:Ljava/lang/Object;

    .line 1890
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1891
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->timestamp_:J

    .line 1892
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1893
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->conversationId_:Ljava/lang/Object;

    .line 1894
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1895
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->senderId_:Ljava/lang/Object;

    .line 1896
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1897
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    .line 1898
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->shardingHint_:Ljava/lang/Object;

    .line 1900
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->retry_:Z

    .line 1902
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1903
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    .line 1904
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1905
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 1906
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 1907
    return-object p0
.end method

.method public clearContent()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 2

    .prologue
    .line 2360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    .line 2361
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2363
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 2

    .prologue
    .line 2236
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2237
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->conversationId_:Ljava/lang/Object;

    .line 2239
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 2

    .prologue
    .line 2179
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2180
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->id_:Ljava/lang/Object;

    .line 2182
    return-object p0
.end method

.method public clearMessageClientId()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 2

    .prologue
    .line 2143
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2144
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getMessageClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->messageClientId_:Ljava/lang/Object;

    .line 2146
    return-object p0
.end method

.method public clearReceiverState()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 2

    .prologue
    .line 2447
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2448
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    .line 2450
    return-object p0
.end method

.method public clearRecipientId()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 2

    .prologue
    .line 2498
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 2499
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2501
    return-object p0
.end method

.method public clearRetry()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 2

    .prologue
    .line 2423
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->retry_:Z

    .line 2426
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 2

    .prologue
    .line 2272
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2273
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->senderId_:Ljava/lang/Object;

    .line 2275
    return-object p0
.end method

.method public clearShardingHint()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 2

    .prologue
    .line 2397
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2398
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getShardingHint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->shardingHint_:Ljava/lang/Object;

    .line 2400
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3

    .prologue
    .line 2205
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2206
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->timestamp_:J

    .line 2208
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3

    .prologue
    .line 1911
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;
    .registers 3
    .parameter "index"

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Content;

    return-object v0
.end method

.method public getContentCount()I
    .registers 2

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->conversationId_:Ljava/lang/Object;

    .line 2218
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2219
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2220
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->conversationId_:Ljava/lang/Object;

    .line 2223
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 1915
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->id_:Ljava/lang/Object;

    .line 2161
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2162
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2163
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->id_:Ljava/lang/Object;

    .line 2166
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getMessageClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->messageClientId_:Ljava/lang/Object;

    .line 2125
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2126
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2127
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->messageClientId_:Ljava/lang/Object;

    .line 2130
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;
    .registers 2

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    return-object v0
.end method

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetry()Z
    .registers 2

    .prologue
    .line 2414
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->retry_:Z

    return v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->senderId_:Ljava/lang/Object;

    .line 2254
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2255
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2256
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->senderId_:Ljava/lang/Object;

    .line 2259
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getShardingHint()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->shardingHint_:Ljava/lang/Object;

    .line 2379
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2380
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2381
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->shardingHint_:Ljava/lang/Object;

    .line 2384
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 2196
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 2214
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 2157
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasMessageClientId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2121
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasReceiverState()Z
    .registers 3

    .prologue
    .line 2432
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRetry()Z
    .registers 3

    .prologue
    .line 2411
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 2250
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasShardingHint()Z
    .registers 3

    .prologue
    .line 2375
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 2193
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2037
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1870
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1870
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1870
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2045
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2046
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_9a

    .line 2051
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2053
    :sswitch_d
    return-object p0

    .line 2058
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2059
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->messageClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 2063
    :sswitch_1b
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2064
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 2068
    :sswitch_28
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2069
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->timestamp_:J

    goto :goto_0

    .line 2073
    :sswitch_35
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2074
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 2078
    :sswitch_42
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2079
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 2083
    :sswitch_4f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v1

    .line 2084
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2085
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->addContent(Lcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    goto :goto_0

    .line 2089
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    :sswitch_5e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2090
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->shardingHint_:Ljava/lang/Object;

    goto :goto_0

    .line 2094
    :sswitch_6b
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureRecipientIdIsMutable()V

    .line 2095
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 2099
    :sswitch_78
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2100
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->retry_:Z

    goto/16 :goto_0

    .line 2104
    :sswitch_86
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2105
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    move-result-object v3

    .line 2106
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;
    if-eqz v3, :cond_0

    .line 2107
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2108
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    goto/16 :goto_0

    .line 2046
    :sswitch_data_9a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_4f
        0x3a -> :sswitch_5e
        0x42 -> :sswitch_6b
        0x48 -> :sswitch_78
        0x50 -> :sswitch_86
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1988
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2033
    :cond_6
    :goto_6
    return-object p0

    .line 1989
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasMessageClientId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1990
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getMessageClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setMessageClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 1992
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1993
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 1995
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1996
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 1998
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1999
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 2001
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2002
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 2004
    :cond_48
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$2600(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 2005
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 2006
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$2600(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    .line 2007
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2014
    :cond_66
    :goto_66
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasShardingHint()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2015
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getShardingHint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setShardingHint(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 2017
    :cond_73
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasRetry()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2018
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getRetry()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setRetry(Z)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 2020
    :cond_80
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasReceiverState()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 2021
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setReceiverState(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 2023
    :cond_8d
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$3000(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2024
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 2025
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$3000(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 2026
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    goto/16 :goto_6

    .line 2009
    :cond_ad
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureContentIsMutable()V

    .line 2010
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$2600(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_66

    .line 2028
    :cond_ba
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureRecipientIdIsMutable()V

    .line 2029
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->access$3000(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public setContent(ILcom/google/wireless/realtimechat/proto/Data$Content$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2314
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureContentIsMutable()V

    .line 2315
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2317
    return-object p0
.end method

.method public setContent(ILcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2304
    if-nez p2, :cond_8

    .line 2305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2307
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureContentIsMutable()V

    .line 2308
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->content_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2310
    return-object p0
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2227
    if-nez p1, :cond_8

    .line 2228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2230
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2231
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->conversationId_:Ljava/lang/Object;

    .line 2233
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2170
    if-nez p1, :cond_8

    .line 2171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2173
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2174
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->id_:Ljava/lang/Object;

    .line 2176
    return-object p0
.end method

.method public setMessageClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2134
    if-nez p1, :cond_8

    .line 2135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2137
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2138
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->messageClientId_:Ljava/lang/Object;

    .line 2140
    return-object p0
.end method

.method public setReceiverState(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2438
    if-nez p1, :cond_8

    .line 2439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2441
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2442
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    .line 2444
    return-object p0
.end method

.method public setRecipientId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2473
    if-nez p2, :cond_8

    .line 2474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2476
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->ensureRecipientIdIsMutable()V

    .line 2477
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2479
    return-object p0
.end method

.method public setRetry(Z)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2417
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2418
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->retry_:Z

    .line 2420
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2263
    if-nez p1, :cond_8

    .line 2264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2266
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2267
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->senderId_:Ljava/lang/Object;

    .line 2269
    return-object p0
.end method

.method public setShardingHint(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2388
    if-nez p1, :cond_8

    .line 2389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2391
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2392
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->shardingHint_:Ljava/lang/Object;

    .line 2394
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2199
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->bitField0_:I

    .line 2200
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->timestamp_:J

    .line 2202
    return-object p0
.end method
