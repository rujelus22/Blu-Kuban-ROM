.class public final Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private destinationNumber_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32395
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 32496
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 32549
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    .line 32396
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->maybeForceBuilderInitialization()V

    .line 32397
    return-void
.end method

.method static synthetic access$38700()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 1

    .prologue
    .line 32390
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 1

    .prologue
    .line 32402
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDestinationNumberIsMutable()V
    .registers 3

    .prologue
    .line 32551
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 32552
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    .line 32553
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    .line 32555
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 32400
    return-void
.end method


# virtual methods
.method public addAllDestinationNumber(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 32591
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->ensureDestinationNumberIsMutable()V

    .line 32592
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 32594
    return-object p0
.end method

.method public addDestinationNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32581
    if-nez p1, :cond_8

    .line 32582
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32584
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->ensureDestinationNumberIsMutable()V

    .line 32585
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 32587
    return-object p0
.end method

.method public addDestinationNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32604
    if-nez p1, :cond_8

    .line 32605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32607
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->ensureDestinationNumberIsMutable()V

    .line 32608
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 32610
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 3

    .prologue
    .line 32423
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-result-object v0

    .line 32424
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 32425
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 32427
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 6

    .prologue
    .line 32431
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 32432
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    .line 32433
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 32434
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 32435
    or-int/lit8 v2, v2, 0x1

    .line 32437
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->access$38902(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32438
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 32439
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    .line 32441
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    .line 32443
    :cond_2b
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->access$39002(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 32444
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->access$39102(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;I)I

    .line 32445
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 2

    .prologue
    .line 32406
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 32407
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 32408
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    .line 32409
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    .line 32410
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    .line 32411
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 2

    .prologue
    .line 32532
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    .line 32533
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 32535
    return-object p0
.end method

.method public clearDestinationNumber()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 2

    .prologue
    .line 32597
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    .line 32598
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    .line 32600
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 3

    .prologue
    .line 32415
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 32390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

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
    .line 32390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 32501
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 32502
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 32503
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32504
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 32507
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
    .line 32512
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 32513
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32514
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32516
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 32519
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 2

    .prologue
    .line 32419
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 32390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32390
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationNumber(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 32564
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationNumberBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 32568
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationNumberCount()I
    .registers 2

    .prologue
    .line 32561
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDestinationNumberList()Ljava/util/List;
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
    .line 32558
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32498
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

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
    .line 32469
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->hasClientLoginToken()Z

    move-result v0

    if-nez v0, :cond_8

    .line 32471
    const/4 v0, 0x0

    .line 32473
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 32449
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 32465
    :cond_6
    :goto_6
    return-object p0

    .line 32450
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 32451
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    .line 32452
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->access$38900(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 32455
    :cond_19
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->access$39000(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 32456
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 32457
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->access$39000(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    .line 32458
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 32460
    :cond_38
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->ensureDestinationNumberIsMutable()V

    .line 32461
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->access$39000(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32480
    const/4 v2, 0x0

    .line 32482
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 32487
    if-eqz v2, :cond_10

    .line 32488
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    .line 32491
    :cond_10
    return-object p0

    .line 32483
    :catch_11
    move-exception v1

    .line 32484
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-object v2, v0

    .line 32485
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 32487
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 32488
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

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
    .line 32390
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 32390
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

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
    .line 32390
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32523
    if-nez p1, :cond_8

    .line 32524
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32526
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    .line 32527
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 32529
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32539
    if-nez p1, :cond_8

    .line 32540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32542
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->bitField0_:I

    .line 32543
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 32545
    return-object p0
.end method

.method public setDestinationNumber(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 32572
    if-nez p2, :cond_8

    .line 32573
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32575
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->ensureDestinationNumberIsMutable()V

    .line 32576
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32578
    return-object p0
.end method
