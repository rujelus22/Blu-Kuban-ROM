.class public final Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Circles.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;",
        "Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private failedCircleId_:Lcom/google/protobuf/LazyStringList;

.field private responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2393
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2516
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    .line 2540
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    .line 2394
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->maybeForceBuilderInitialization()V

    .line 2395
    return-void
.end method

.method static synthetic access$2900()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 1

    .prologue
    .line 2388
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 1

    .prologue
    .line 2400
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFailedCircleIdIsMutable()V
    .registers 3

    .prologue
    .line 2542
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 2543
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    .line 2544
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    .line 2546
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2398
    return-void
.end method


# virtual methods
.method public addAllFailedCircleId(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 2578
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->ensureFailedCircleIdIsMutable()V

    .line 2579
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2581
    return-object p0
.end method

.method public addFailedCircleId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2568
    if-nez p1, :cond_8

    .line 2569
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2571
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->ensureFailedCircleIdIsMutable()V

    .line 2572
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 2574
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2388
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->build()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;
    .registers 3

    .prologue
    .line 2421
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    move-result-object v0

    .line 2422
    .local v0, result:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2423
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2425
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2388
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;
    .registers 6

    .prologue
    .line 2439
    new-instance v1, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;-><init>(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;Lcom/google/wireless/contacts/proto/Circles$1;)V

    .line 2440
    .local v1, result:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    .line 2441
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2442
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2443
    or-int/lit8 v2, v2, 0x1

    .line 2445
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->access$3102(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    .line 2446
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 2447
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    .line 2449
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    .line 2451
    :cond_2b
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->access$3202(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2452
    #setter for: Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->access$3302(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;I)I

    .line 2453
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2388
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2388
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 2

    .prologue
    .line 2404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2405
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    .line 2406
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    .line 2407
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    .line 2408
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    .line 2409
    return-object p0
.end method

.method public clearFailedCircleId()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 2

    .prologue
    .line 2584
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    .line 2585
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    .line 2587
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 2

    .prologue
    .line 2533
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    .line 2534
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    .line 2536
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2388
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2388
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 3

    .prologue
    .line 2413
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

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
    .line 2388
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2388
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2388
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;
    .registers 2

    .prologue
    .line 2417
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFailedCircleId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFailedCircleIdCount()I
    .registers 2

    .prologue
    .line 2552
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getFailedCircleIdList()Ljava/util/List;
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
    .line 2549
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;
    .registers 2

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    return-object v0
.end method

.method public hasResponseCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2518
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

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
    .line 2475
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
    .line 2388
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2388
    check-cast p1, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

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
    .line 2388
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2483
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2484
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 2489
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2491
    :sswitch_d
    return-object p0

    .line 2496
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2497
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->valueOf(I)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    move-result-object v2

    .line 2498
    .local v2, value:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;
    if-eqz v2, :cond_0

    .line 2499
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    .line 2500
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    goto :goto_0

    .line 2505
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;
    :sswitch_21
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->ensureFailedCircleIdIsMutable()V

    .line 2506
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 2484
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 2457
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2471
    :cond_6
    :goto_6
    return-object p0

    .line 2458
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2459
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->getResponseCode()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->setResponseCode(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    .line 2461
    :cond_14
    #getter for: Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->access$3200(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2462
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2463
    #getter for: Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->access$3200(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    .line 2464
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 2466
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->ensureFailedCircleIdIsMutable()V

    .line 2467
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->access$3200(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setFailedCircleId(ILjava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2559
    if-nez p2, :cond_8

    .line 2560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2562
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->ensureFailedCircleIdIsMutable()V

    .line 2563
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2565
    return-object p0
.end method

.method public setResponseCode(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2524
    if-nez p1, :cond_8

    .line 2525
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2527
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->bitField0_:I

    .line 2528
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    .line 2530
    return-object p0
.end method
