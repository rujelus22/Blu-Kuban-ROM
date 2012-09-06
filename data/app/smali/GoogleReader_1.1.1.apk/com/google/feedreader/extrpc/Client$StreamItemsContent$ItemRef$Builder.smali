.class public final Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRefOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;",
        "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRefOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private directStreamIds_:Lcom/google/protobuf/LazyStringList;

.field private externalId_:Ljava/lang/Object;

.field private id_:J

.field private rankingDebug_:Ljava/lang/Object;

.field private timestampUsec_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24133
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 24319
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    .line 24375
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->rankingDebug_:Ljava/lang/Object;

    .line 24411
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->externalId_:Ljava/lang/Object;

    .line 24134
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->maybeForceBuilderInitialization()V

    .line 24135
    return-void
.end method

.method static synthetic access$29600(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24128
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$29700()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 1

    .prologue
    .line 24128
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24176
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    .line 24177
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 24178
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 24181
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 1

    .prologue
    .line 24140
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDirectStreamIdsIsMutable()V
    .registers 3

    .prologue
    .line 24321
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 24322
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    .line 24323
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24325
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 24138
    return-void
.end method


# virtual methods
.method public addAllDirectStreamIds(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;"
        }
    .end annotation

    .prologue
    .line 24357
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->ensureDirectStreamIdsIsMutable()V

    .line 24358
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 24360
    return-object p0
.end method

.method public addDirectStreamIds(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 3
    .parameter

    .prologue
    .line 24347
    if-nez p1, :cond_8

    .line 24348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24350
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->ensureDirectStreamIdsIsMutable()V

    .line 24351
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 24353
    return-object p0
.end method

.method addDirectStreamIds(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 24369
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->ensureDirectStreamIdsIsMutable()V

    .line 24370
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 24372
    return-void
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 3

    .prologue
    .line 24167
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    .line 24168
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 24169
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 24171
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24128
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 6

    .prologue
    .line 24185
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;-><init>(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 24186
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24187
    const/4 v2, 0x0

    .line 24188
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 24189
    or-int/lit8 v2, v2, 0x1

    .line 24191
    :cond_10
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->id_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->id_:J
    invoke-static {v0, v3, v4}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->access$29902(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;J)J

    .line 24192
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 24193
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    .line 24195
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24197
    :cond_2b
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->access$30002(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 24198
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 24199
    or-int/lit8 v2, v2, 0x2

    .line 24201
    :cond_37
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->rankingDebug_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->rankingDebug_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->access$30102(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24202
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 24203
    or-int/lit8 v2, v2, 0x4

    .line 24205
    :cond_44
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->externalId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->externalId_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->access$30202(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24206
    and-int/lit8 v1, v1, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_5a

    .line 24207
    or-int/lit8 v1, v2, 0x8

    .line 24209
    :goto_51
    iget-wide v2, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->timestampUsec_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->timestampUsec_:J
    invoke-static {v0, v2, v3}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->access$30302(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;J)J

    .line 24210
    #setter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->access$30402(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;I)I

    .line 24211
    return-object v0

    :cond_5a
    move v1, v2

    goto :goto_51
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24128
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 24144
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 24145
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->id_:J

    .line 24146
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24147
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    .line 24148
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24149
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->rankingDebug_:Ljava/lang/Object;

    .line 24150
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->externalId_:Ljava/lang/Object;

    .line 24152
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24153
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->timestampUsec_:J

    .line 24154
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24155
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24128
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24128
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDirectStreamIds()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 2

    .prologue
    .line 24363
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    .line 24364
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24366
    return-object p0
.end method

.method public clearExternalId()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 2

    .prologue
    .line 24435
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24436
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getExternalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->externalId_:Ljava/lang/Object;

    .line 24438
    return-object p0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 3

    .prologue
    .line 24312
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24313
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->id_:J

    .line 24315
    return-object p0
.end method

.method public clearRankingDebug()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 2

    .prologue
    .line 24399
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24400
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getRankingDebug()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->rankingDebug_:Ljava/lang/Object;

    .line 24402
    return-object p0
.end method

.method public clearTimestampUsec()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 3

    .prologue
    .line 24461
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24462
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->timestampUsec_:J

    .line 24464
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 3

    .prologue
    .line 24159
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 24128
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24128
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24128
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

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
    .line 24128
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
    .registers 2

    .prologue
    .line 24163
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 24128
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24128
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    return-object v0
.end method

.method public getDirectStreamIds(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 24334
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDirectStreamIdsCount()I
    .registers 2

    .prologue
    .line 24331
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDirectStreamIdsList()Ljava/util/List;
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
    .line 24328
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24416
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->externalId_:Ljava/lang/Object;

    .line 24417
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 24418
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24419
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->externalId_:Ljava/lang/Object;

    move-object v2, v1

    .line 24422
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 24303
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->id_:J

    return-wide v0
.end method

.method public getRankingDebug()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24380
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->rankingDebug_:Ljava/lang/Object;

    .line 24381
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 24382
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24383
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->rankingDebug_:Ljava/lang/Object;

    move-object v2, v1

    .line 24386
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getTimestampUsec()J
    .registers 3

    .prologue
    .line 24452
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->timestampUsec_:J

    return-wide v0
.end method

.method public hasExternalId()Z
    .registers 3

    .prologue
    .line 24413
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

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
    const/4 v1, 0x1

    .line 24300
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasRankingDebug()Z
    .registers 3

    .prologue
    .line 24377
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

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

.method public hasTimestampUsec()Z
    .registers 3

    .prologue
    .line 24449
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 24242
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 24244
    const/4 v0, 0x0

    .line 24246
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 4
    .parameter

    .prologue
    .line 24215
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 24238
    :goto_7
    return-object v0

    .line 24216
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 24217
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->setId(J)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    .line 24219
    :cond_15
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->access$30000(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 24220
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 24221
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->access$30000(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    .line 24222
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24229
    :cond_33
    :goto_33
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->hasRankingDebug()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 24230
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getRankingDebug()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->setRankingDebug(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    .line 24232
    :cond_40
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->hasExternalId()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 24233
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getExternalId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->setExternalId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    .line 24235
    :cond_4d
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->hasTimestampUsec()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 24236
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->getTimestampUsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->setTimestampUsec(J)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    :cond_5a
    move-object v0, p0

    .line 24238
    goto :goto_7

    .line 24224
    :cond_5c
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->ensureDirectStreamIdsIsMutable()V

    .line 24225
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->directStreamIds_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;->access$30000(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_33
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24254
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 24255
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_50

    .line 24260
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24262
    :sswitch_d
    return-object p0

    .line 24267
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24268
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->id_:J

    goto :goto_0

    .line 24272
    :sswitch_1b
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->ensureDirectStreamIdsIsMutable()V

    .line 24273
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 24277
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24278
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->rankingDebug_:Ljava/lang/Object;

    goto :goto_0

    .line 24282
    :sswitch_35
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24283
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->externalId_:Ljava/lang/Object;

    goto :goto_0

    .line 24287
    :sswitch_42
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24288
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->timestampUsec_:J

    goto :goto_0

    .line 24255
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x28 -> :sswitch_42
    .end sparse-switch
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
    .line 24128
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24128
    check-cast p1, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

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
    .line 24128
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDirectStreamIds(ILjava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 24338
    if-nez p2, :cond_8

    .line 24339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24341
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->ensureDirectStreamIdsIsMutable()V

    .line 24342
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->directStreamIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24344
    return-object p0
.end method

.method public setExternalId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24426
    if-nez p1, :cond_8

    .line 24427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24429
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24430
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->externalId_:Ljava/lang/Object;

    .line 24432
    return-object p0
.end method

.method setExternalId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 24441
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24442
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->externalId_:Ljava/lang/Object;

    .line 24444
    return-void
.end method

.method public setId(J)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 24306
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24307
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->id_:J

    .line 24309
    return-object p0
.end method

.method public setRankingDebug(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24390
    if-nez p1, :cond_8

    .line 24391
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24393
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24394
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->rankingDebug_:Ljava/lang/Object;

    .line 24396
    return-object p0
.end method

.method setRankingDebug(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 24405
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24406
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->rankingDebug_:Ljava/lang/Object;

    .line 24408
    return-void
.end method

.method public setTimestampUsec(J)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 24455
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->bitField0_:I

    .line 24456
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef$Builder;->timestampUsec_:J

    .line 24458
    return-object p0
.end method
