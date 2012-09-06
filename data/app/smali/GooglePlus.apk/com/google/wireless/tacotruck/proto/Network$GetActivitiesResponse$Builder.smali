.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private activity_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private nextContinuationToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4422
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4547
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    .line 4636
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    .line 4423
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->maybeForceBuilderInitialization()V

    .line 4424
    return-void
.end method

.method static synthetic access$5300(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4417
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 1

    .prologue
    .line 4417
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4459
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    .line 4460
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4461
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 4464
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 1

    .prologue
    .line 4429
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActivityIsMutable()V
    .registers 3

    .prologue
    .line 4550
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 4551
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    .line 4552
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4554
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4427
    return-void
.end method


# virtual methods
.method public addActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4610
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4611
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4613
    return-object p0
.end method

.method public addActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4593
    if-nez p2, :cond_8

    .line 4594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4596
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4597
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4599
    return-object p0
.end method

.method public addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4603
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4604
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4606
    return-object p0
.end method

.method public addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4583
    if-nez p1, :cond_8

    .line 4584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4586
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4587
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4589
    return-object p0
.end method

.method public addAllActivity(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 4617
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4618
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4620
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    .registers 3

    .prologue
    .line 4450
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    .line 4451
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4452
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4454
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    .registers 6

    .prologue
    .line 4468
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 4469
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4470
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4471
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 4472
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    .line 4473
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4475
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->access$5602(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;Ljava/util/List;)Ljava/util/List;

    .line 4476
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 4477
    or-int/lit8 v2, v2, 0x1

    .line 4479
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->nextContinuationToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->access$5702(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4480
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->access$5802(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;I)I

    .line 4481
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 2

    .prologue
    .line 4433
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4434
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    .line 4435
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    .line 4437
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4438
    return-object p0
.end method

.method public clearActivity()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 2

    .prologue
    .line 4623
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    .line 4624
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4626
    return-object p0
.end method

.method public clearNextContinuationToken()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 2

    .prologue
    .line 4660
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4661
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getNextContinuationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    .line 4663
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 3

    .prologue
    .line 4442
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

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
    .line 4417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 4563
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getActivityCount()I
    .registers 2

    .prologue
    .line 4560
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActivityList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4557
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    .registers 2

    .prologue
    .line 4446
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getNextContinuationToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4641
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    .line 4642
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4643
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4644
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    .line 4647
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

.method public hasNextContinuationToken()Z
    .registers 3

    .prologue
    .line 4638
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 4503
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->getActivityCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 4504
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4506
    const/4 v1, 0x0

    .line 4509
    :goto_12
    return v1

    .line 4503
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4509
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
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
    .line 4417
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4417
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

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
    .line 4417
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4517
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4518
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 4523
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4525
    :sswitch_d
    return-object p0

    .line 4530
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    .line 4531
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4532
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    goto :goto_0

    .line 4536
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4537
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    goto :goto_0

    .line 4518
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 4485
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4499
    :cond_6
    :goto_6
    return-object p0

    .line 4486
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->access$5600(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4487
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4488
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->access$5600(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    .line 4489
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4496
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->hasNextContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4497
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getNextContinuationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->setNextContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    goto :goto_6

    .line 4491
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4492
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->access$5600(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4577
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4578
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4580
    return-object p0
.end method

.method public setActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4567
    if-nez p2, :cond_8

    .line 4568
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4570
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4571
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4573
    return-object p0
.end method

.method public setNextContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4651
    if-nez p1, :cond_8

    .line 4652
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4654
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4655
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    .line 4657
    return-object p0
.end method
