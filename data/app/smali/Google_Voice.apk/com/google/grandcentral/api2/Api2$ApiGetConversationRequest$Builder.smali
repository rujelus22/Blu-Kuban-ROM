.class public final Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private conversationId_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24188
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 24289
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 24342
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 24189
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 24190
    return-void
.end method

.method static synthetic access$28800()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 1

    .prologue
    .line 24183
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 1

    .prologue
    .line 24195
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureConversationIdIsMutable()V
    .registers 3

    .prologue
    .line 24344
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 24345
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 24346
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    .line 24348
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 24193
    return-void
.end method


# virtual methods
.method public addAllConversationId(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 24384
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->ensureConversationIdIsMutable()V

    .line 24385
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 24387
    return-object p0
.end method

.method public addConversationId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24374
    if-nez p1, :cond_8

    .line 24375
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24377
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->ensureConversationIdIsMutable()V

    .line 24378
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 24380
    return-object p0
.end method

.method public addConversationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24397
    if-nez p1, :cond_8

    .line 24398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24400
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->ensureConversationIdIsMutable()V

    .line 24401
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 24403
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;
    .registers 3

    .prologue
    .line 24216
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    move-result-object v0

    .line 24217
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 24218
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 24220
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24183
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;
    .registers 6

    .prologue
    .line 24224
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 24225
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    .line 24226
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 24227
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 24228
    or-int/lit8 v2, v2, 0x1

    .line 24230
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->access$29002(Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24231
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 24232
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 24234
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    .line 24236
    :cond_2b
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->access$29102(Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 24237
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->access$29202(Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;I)I

    .line 24238
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24183
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 2

    .prologue
    .line 24199
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 24200
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 24201
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    .line 24202
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 24203
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    .line 24204
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24183
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24183
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 2

    .prologue
    .line 24325
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    .line 24326
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 24328
    return-object p0
.end method

.method public clearConversationId()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 2

    .prologue
    .line 24390
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 24391
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    .line 24393
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 3

    .prologue
    .line 24208
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 24183
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24183
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24183
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

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
    .line 24183
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24294
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 24295
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24296
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24297
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 24300
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

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24305
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 24306
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24307
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24309
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 24312
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getConversationId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 24357
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConversationIdBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 24361
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getConversationIdCount()I
    .registers 2

    .prologue
    .line 24354
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getConversationIdList()Ljava/util/List;
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
    .line 24351
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;
    .registers 2

    .prologue
    .line 24212
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 24183
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24183
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24291
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 24262
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->hasClientLoginToken()Z

    move-result v0

    if-nez v0, :cond_8

    .line 24264
    const/4 v0, 0x0

    .line 24266
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 24242
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 24258
    :cond_6
    :goto_6
    return-object p0

    .line 24243
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 24244
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    .line 24245
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->access$29000(Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 24248
    :cond_19
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->access$29100(Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 24249
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 24250
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->access$29100(Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 24251
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 24253
    :cond_38
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->ensureConversationIdIsMutable()V

    .line 24254
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->access$29100(Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24273
    const/4 v2, 0x0

    .line 24275
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 24280
    if-eqz v2, :cond_10

    .line 24281
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    .line 24284
    :cond_10
    return-object p0

    .line 24276
    :catch_11
    move-exception v1

    .line 24277
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    move-object v2, v0

    .line 24278
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 24280
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 24281
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    :cond_21
    throw v3
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
    .line 24183
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24183
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

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
    .line 24183
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24316
    if-nez p1, :cond_8

    .line 24317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24319
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    .line 24320
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 24322
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24332
    if-nez p1, :cond_8

    .line 24333
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24335
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->bitField0_:I

    .line 24336
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 24338
    return-object p0
.end method

.method public setConversationId(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 24365
    if-nez p2, :cond_8

    .line 24366
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24368
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->ensureConversationIdIsMutable()V

    .line 24369
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24371
    return-object p0
.end method
