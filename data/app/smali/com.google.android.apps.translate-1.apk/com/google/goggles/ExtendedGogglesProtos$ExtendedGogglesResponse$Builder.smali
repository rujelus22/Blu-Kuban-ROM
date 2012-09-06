.class public final Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ExtendedGogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;",
        "Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;",
        ">;",
        "Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private eyeCandyResults_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation
.end field

.field private gogglesId_:J

.field private momentId_:Ljava/lang/Object;

.field private puggleResults_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation
.end field

.field private trackingId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2046
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2228
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    .line 2338
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->momentId_:Ljava/lang/Object;

    .line 2374
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->trackingId_:Ljava/lang/Object;

    .line 2410
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    .line 2047
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->maybeForceBuilderInitialization()V

    .line 2048
    return-void
.end method

.method static synthetic access$2200(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2041
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 1

    .prologue
    .line 2041
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->create()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2089
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    .line 2090
    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2091
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2094
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 1

    .prologue
    .line 2053
    new-instance v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEyeCandyResultsIsMutable()V
    .registers 3

    .prologue
    .line 2231
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 2232
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    .line 2233
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2235
    :cond_16
    return-void
.end method

.method private ensurePuggleResultsIsMutable()V
    .registers 3

    .prologue
    .line 2413
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 2414
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    .line 2415
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2417
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2051
    return-void
.end method


# virtual methods
.method public addAllEyeCandyResults(Ljava/lang/Iterable;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;)",
            "Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 2298
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensureEyeCandyResultsIsMutable()V

    .line 2299
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2301
    return-object p0
.end method

.method public addAllPuggleResults(Ljava/lang/Iterable;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;)",
            "Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 2480
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensurePuggleResultsIsMutable()V

    .line 2481
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2483
    return-object p0
.end method

.method public addEyeCandyResults(ILcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2291
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensureEyeCandyResultsIsMutable()V

    .line 2292
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ResultProtos$Result$Builder;->build()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2294
    return-object p0
.end method

.method public addEyeCandyResults(ILcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2274
    if-nez p2, :cond_8

    .line 2275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2277
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensureEyeCandyResultsIsMutable()V

    .line 2278
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2280
    return-object p0
.end method

.method public addEyeCandyResults(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2284
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensureEyeCandyResultsIsMutable()V

    .line 2285
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/ResultProtos$Result$Builder;->build()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2287
    return-object p0
.end method

.method public addEyeCandyResults(Lcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2264
    if-nez p1, :cond_8

    .line 2265
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2267
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensureEyeCandyResultsIsMutable()V

    .line 2268
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2270
    return-object p0
.end method

.method public addPuggleResults(ILcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2473
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensurePuggleResultsIsMutable()V

    .line 2474
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ResultProtos$Result$Builder;->build()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2476
    return-object p0
.end method

.method public addPuggleResults(ILcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2456
    if-nez p2, :cond_8

    .line 2457
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2459
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensurePuggleResultsIsMutable()V

    .line 2460
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2462
    return-object p0
.end method

.method public addPuggleResults(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2466
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensurePuggleResultsIsMutable()V

    .line 2467
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/ResultProtos$Result$Builder;->build()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2469
    return-object p0
.end method

.method public addPuggleResults(Lcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2446
    if-nez p1, :cond_8

    .line 2447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2449
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensurePuggleResultsIsMutable()V

    .line 2450
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2452
    return-object p0
.end method

.method public build()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 3

    .prologue
    .line 2080
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    .line 2081
    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2082
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2084
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->build()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 2098
    new-instance v2, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;-><init>(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;Lcom/google/goggles/ExtendedGogglesProtos$1;)V

    .line 2099
    iget v3, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2100
    const/4 v1, 0x0

    .line 2101
    iget v4, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_1e

    .line 2102
    iget-object v4, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    .line 2103
    iget v4, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2105
    :cond_1e
    iget-object v4, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->access$2502(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;Ljava/util/List;)Ljava/util/List;

    .line 2106
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_65

    .line 2109
    :goto_28
    iget-wide v4, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->gogglesId_:J

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->gogglesId_:J
    invoke-static {v2, v4, v5}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->access$2602(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;J)J

    .line 2110
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_34

    .line 2111
    or-int/lit8 v0, v0, 0x2

    .line 2113
    :cond_34
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->momentId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->momentId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->access$2702(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_41

    .line 2115
    or-int/lit8 v0, v0, 0x4

    .line 2117
    :cond_41
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->trackingId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->trackingId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->access$2802(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_5c

    .line 2119
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    .line 2120
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2122
    :cond_5c
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->access$2902(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;Ljava/util/List;)Ljava/util/List;

    .line 2123
    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->access$3002(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;I)I

    .line 2124
    return-object v2

    :cond_65
    move v0, v1

    goto :goto_28
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 3

    .prologue
    .line 2057
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2058
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    .line 2059
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2060
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->gogglesId_:J

    .line 2061
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2062
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->momentId_:Ljava/lang/Object;

    .line 2063
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2064
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->trackingId_:Ljava/lang/Object;

    .line 2065
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2066
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    .line 2067
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2068
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->clear()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->clear()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEyeCandyResults()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 2

    .prologue
    .line 2304
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    .line 2305
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2307
    return-object p0
.end method

.method public clearGogglesId()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2331
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2332
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->gogglesId_:J

    .line 2334
    return-object p0
.end method

.method public clearMomentId()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 2

    .prologue
    .line 2362
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2363
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getMomentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->momentId_:Ljava/lang/Object;

    .line 2365
    return-object p0
.end method

.method public clearPuggleResults()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 2

    .prologue
    .line 2486
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    .line 2487
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2489
    return-object p0
.end method

.method public clearTrackingId()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 2

    .prologue
    .line 2398
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2399
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->trackingId_:Ljava/lang/Object;

    .line 2401
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 3

    .prologue
    .line 2072
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->create()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->clone()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->clone()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->clone()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

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
    .line 2041
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->clone()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 2

    .prologue
    .line 2076
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getEyeCandyResults(I)Lcom/google/goggles/ResultProtos$Result;
    .registers 3
    .parameter

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result;

    return-object v0
.end method

.method public getEyeCandyResultsCount()I
    .registers 2

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEyeCandyResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGogglesId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2322
    iget-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->gogglesId_:J

    return-wide v0
.end method

.method public getMomentId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->momentId_:Ljava/lang/Object;

    .line 2344
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2345
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2346
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->momentId_:Ljava/lang/Object;

    .line 2349
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getPuggleResults(I)Lcom/google/goggles/ResultProtos$Result;
    .registers 3
    .parameter

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result;

    return-object v0
.end method

.method public getPuggleResultsCount()I
    .registers 2

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPuggleResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->trackingId_:Ljava/lang/Object;

    .line 2380
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2381
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2382
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->trackingId_:Ljava/lang/Object;

    .line 2385
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasGogglesId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2319
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

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

.method public hasMomentId()Z
    .registers 3

    .prologue
    .line 2340
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

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

.method public hasTrackingId()Z
    .registers 3

    .prologue
    .line 2376
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2162
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->getEyeCandyResultsCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 2163
    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->getEyeCandyResults(I)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/ResultProtos$Result;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2174
    :cond_12
    :goto_12
    return v1

    .line 2162
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    move v0, v1

    .line 2168
    :goto_17
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->getPuggleResultsCount()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 2169
    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->getPuggleResults(I)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/ResultProtos$Result;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2168
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2174
    :cond_2a
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2128
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2158
    :cond_6
    :goto_6
    return-object p0

    .line 2129
    :cond_7
    #getter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->access$2500(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 2130
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2131
    #getter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->access$2500(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    .line 2132
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2139
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->hasGogglesId()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2140
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getGogglesId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->setGogglesId(J)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    .line 2142
    :cond_32
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->hasMomentId()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2143
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getMomentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->setMomentId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    .line 2145
    :cond_3f
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->hasTrackingId()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2146
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->setTrackingId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    .line 2148
    :cond_4c
    #getter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->access$2900(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2149
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2150
    #getter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->access$2900(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    .line 2151
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 2134
    :cond_6b
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensureEyeCandyResultsIsMutable()V

    .line 2135
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->access$2500(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 2153
    :cond_78
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensurePuggleResultsIsMutable()V

    .line 2154
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    #getter for: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->access$2900(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2182
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2183
    sparse-switch v0, :sswitch_data_54

    .line 2188
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2190
    :sswitch_d
    return-object p0

    .line 2195
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    .line 2196
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2197
    invoke-virtual {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->buildPartial()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->addEyeCandyResults(Lcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    goto :goto_0

    .line 2201
    :sswitch_1d
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2202
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->gogglesId_:J

    goto :goto_0

    .line 2206
    :sswitch_2a
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2207
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->momentId_:Ljava/lang/Object;

    goto :goto_0

    .line 2211
    :sswitch_37
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2212
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->trackingId_:Ljava/lang/Object;

    goto :goto_0

    .line 2216
    :sswitch_44
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->newBuilder()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    .line 2217
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2218
    invoke-virtual {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->buildPartial()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->addPuggleResults(Lcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    goto :goto_0

    .line 2183
    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x11 -> :sswitch_1d
        0x2a -> :sswitch_2a
        0x32 -> :sswitch_37
        0x3a -> :sswitch_44
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2041
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2041
    check-cast p1, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2041
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeEyeCandyResults(I)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2310
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensureEyeCandyResultsIsMutable()V

    .line 2311
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2313
    return-object p0
.end method

.method public removePuggleResults(I)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2492
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensurePuggleResultsIsMutable()V

    .line 2493
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2495
    return-object p0
.end method

.method public setEyeCandyResults(ILcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2258
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensureEyeCandyResultsIsMutable()V

    .line 2259
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ResultProtos$Result$Builder;->build()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2261
    return-object p0
.end method

.method public setEyeCandyResults(ILcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2248
    if-nez p2, :cond_8

    .line 2249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2251
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensureEyeCandyResultsIsMutable()V

    .line 2252
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2254
    return-object p0
.end method

.method public setGogglesId(J)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2325
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2326
    iput-wide p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->gogglesId_:J

    .line 2328
    return-object p0
.end method

.method public setMomentId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2353
    if-nez p1, :cond_8

    .line 2354
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2356
    :cond_8
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2357
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->momentId_:Ljava/lang/Object;

    .line 2359
    return-object p0
.end method

.method setMomentId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2368
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2369
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->momentId_:Ljava/lang/Object;

    .line 2371
    return-void
.end method

.method public setPuggleResults(ILcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2440
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensurePuggleResultsIsMutable()V

    .line 2441
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/ResultProtos$Result$Builder;->build()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2443
    return-object p0
.end method

.method public setPuggleResults(ILcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2430
    if-nez p2, :cond_8

    .line 2431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2433
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->ensurePuggleResultsIsMutable()V

    .line 2434
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->puggleResults_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2436
    return-object p0
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2389
    if-nez p1, :cond_8

    .line 2390
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2392
    :cond_8
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2393
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->trackingId_:Ljava/lang/Object;

    .line 2395
    return-object p0
.end method

.method setTrackingId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2404
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->bitField0_:I

    .line 2405
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->trackingId_:Ljava/lang/Object;

    .line 2407
    return-void
.end method
