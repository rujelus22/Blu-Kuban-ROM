.class public final Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$BatchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$BatchResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private response_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2205
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2308
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    .line 2206
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->maybeForceBuilderInitialization()V

    .line 2207
    return-void
.end method

.method static synthetic access$2600(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2200
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 1

    .prologue
    .line 2200
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2240
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    .line 2241
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2242
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2245
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 1

    .prologue
    .line 2212
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureResponseIsMutable()V
    .registers 3

    .prologue
    .line 2311
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 2312
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    .line 2313
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    .line 2315
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2210
    return-void
.end method


# virtual methods
.method public addAllResponse(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$Response;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 2378
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$Response;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 2379
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2381
    return-object p0
.end method

.method public addResponse(ILcom/google/wireless/tacotruck/proto/Network$Response$Builder;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2371
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 2372
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2374
    return-object p0
.end method

.method public addResponse(ILcom/google/wireless/tacotruck/proto/Network$Response;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2354
    if-nez p2, :cond_8

    .line 2355
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2357
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 2358
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2360
    return-object p0
.end method

.method public addResponse(Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 2364
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 2365
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2367
    return-object p0
.end method

.method public addResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2344
    if-nez p1, :cond_8

    .line 2345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2347
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 2348
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2350
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    .registers 3

    .prologue
    .line 2231
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    .line 2232
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2233
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2235
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    .registers 5

    .prologue
    .line 2249
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 2250
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    .line 2251
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 2252
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    .line 2253
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    .line 2255
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->access$2902(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;Ljava/util/List;)Ljava/util/List;

    .line 2256
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 2

    .prologue
    .line 2216
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    .line 2218
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    .line 2219
    return-object p0
.end method

.method public clearResponse()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 2

    .prologue
    .line 2384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    .line 2385
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    .line 2387
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 3

    .prologue
    .line 2223
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

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
    .line 2200
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    .registers 2

    .prologue
    .line 2227
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponse(I)Lcom/google/wireless/tacotruck/proto/Network$Response;
    .registers 3
    .parameter "index"

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$Response;

    return-object v0
.end method

.method public getResponseCount()I
    .registers 2

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2275
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
    .line 2200
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2200
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

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
    .line 2200
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2283
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2284
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 2289
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2291
    :sswitch_d
    return-object p0

    .line 2296
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Response;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;

    move-result-object v0

    .line 2297
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2298
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->addResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;

    goto :goto_0

    .line 2284
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 2260
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2271
    :cond_6
    :goto_6
    return-object p0

    .line 2261
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->access$2900(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2262
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2263
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->access$2900(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    .line 2264
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 2266
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 2267
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->access$2900(Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setResponse(ILcom/google/wireless/tacotruck/proto/Network$Response$Builder;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2338
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 2339
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$Response$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2341
    return-object p0
.end method

.method public setResponse(ILcom/google/wireless/tacotruck/proto/Network$Response;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2328
    if-nez p2, :cond_8

    .line 2329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2331
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 2332
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2334
    return-object p0
.end method
