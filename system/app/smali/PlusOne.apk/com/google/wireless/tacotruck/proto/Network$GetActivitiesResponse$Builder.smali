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
    .line 4245
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4370
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    .line 4459
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    .line 4246
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->maybeForceBuilderInitialization()V

    .line 4247
    return-void
.end method

.method static synthetic access$5100(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4240
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 1

    .prologue
    .line 4240
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
    .line 4282
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    .line 4283
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4284
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 4287
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 1

    .prologue
    .line 4252
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActivityIsMutable()V
    .registers 3

    .prologue
    .line 4373
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 4374
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    .line 4375
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4377
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4250
    return-void
.end method


# virtual methods
.method public addActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4433
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4434
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4436
    return-object p0
.end method

.method public addActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4416
    if-nez p2, :cond_8

    .line 4417
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4419
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4420
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4422
    return-object p0
.end method

.method public addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4426
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4427
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4429
    return-object p0
.end method

.method public addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4406
    if-nez p1, :cond_8

    .line 4407
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4409
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4410
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4412
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
    .line 4440
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4441
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4443
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4240
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    .registers 6

    .prologue
    .line 4291
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 4292
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4293
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4294
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 4295
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    .line 4296
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4298
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->access$5402(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;Ljava/util/List;)Ljava/util/List;

    .line 4299
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 4300
    or-int/lit8 v2, v2, 0x1

    .line 4302
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->nextContinuationToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->access$5502(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4303
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->access$5602(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;I)I

    .line 4304
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4240
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4240
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 2

    .prologue
    .line 4256
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    .line 4258
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    .line 4260
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4261
    return-object p0
.end method

.method public clearActivity()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 2

    .prologue
    .line 4446
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    .line 4447
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4449
    return-object p0
.end method

.method public clearNextContinuationToken()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 2

    .prologue
    .line 4483
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4484
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getNextContinuationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    .line 4486
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4240
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4240
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 3

    .prologue
    .line 4265
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
    .line 4240
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 4386
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getActivityCount()I
    .registers 2

    .prologue
    .line 4383
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
    .line 4380
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4240
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4240
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    .registers 2

    .prologue
    .line 4269
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getNextContinuationToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4464
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    .line 4465
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4466
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4467
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    .line 4470
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
    .line 4461
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
    .line 4240
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

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
    .line 4240
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
    .line 4340
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4341
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 4346
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4348
    :sswitch_d
    return-object p0

    .line 4353
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    .line 4354
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4355
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    goto :goto_0

    .line 4359
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4360
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    goto :goto_0

    .line 4341
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
    .line 4308
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4322
    :cond_6
    :goto_6
    return-object p0

    .line 4309
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->access$5400(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4310
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4311
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->access$5400(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    .line 4312
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4319
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->hasNextContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4320
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getNextContinuationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->setNextContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    goto :goto_6

    .line 4314
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4315
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->access$5400(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4400
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4401
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4403
    return-object p0
.end method

.method public setActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4390
    if-nez p2, :cond_8

    .line 4391
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4393
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->ensureActivityIsMutable()V

    .line 4394
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4396
    return-object p0
.end method

.method public setNextContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4474
    if-nez p1, :cond_8

    .line 4475
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4477
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->bitField0_:I

    .line 4478
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->nextContinuationToken_:Ljava/lang/Object;

    .line 4480
    return-object p0
.end method
