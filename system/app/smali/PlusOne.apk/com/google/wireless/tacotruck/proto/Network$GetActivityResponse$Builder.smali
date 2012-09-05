.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponseOrBuilder;"
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

.field private missingActivity_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5213
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5345
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    .line 5434
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    .line 5214
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->maybeForceBuilderInitialization()V

    .line 5215
    return-void
.end method

.method static synthetic access$6400(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5208
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 1

    .prologue
    .line 5208
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5250
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    .line 5251
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 5252
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 5255
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 1

    .prologue
    .line 5220
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActivityIsMutable()V
    .registers 3

    .prologue
    .line 5348
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 5349
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    .line 5350
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5352
    :cond_16
    return-void
.end method

.method private ensureMissingActivityIsMutable()V
    .registers 3

    .prologue
    .line 5437
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 5438
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    .line 5439
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5441
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5218
    return-void
.end method


# virtual methods
.method public addActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5408
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5409
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5411
    return-object p0
.end method

.method public addActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5391
    if-nez p2, :cond_8

    .line 5392
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5394
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5395
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5397
    return-object p0
.end method

.method public addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 5401
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5402
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5404
    return-object p0
.end method

.method public addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5381
    if-nez p1, :cond_8

    .line 5382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5384
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5385
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5387
    return-object p0
.end method

.method public addAllActivity(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 5415
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5416
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5418
    return-object p0
.end method

.method public addAllMissingActivity(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 5504
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5505
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5507
    return-object p0
.end method

.method public addMissingActivity(ILcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5497
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5498
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5500
    return-object p0
.end method

.method public addMissingActivity(ILcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5480
    if-nez p2, :cond_8

    .line 5481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5483
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5484
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5486
    return-object p0
.end method

.method public addMissingActivity(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 5490
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5491
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5493
    return-object p0
.end method

.method public addMissingActivity(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5470
    if-nez p1, :cond_8

    .line 5471
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5473
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5474
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5476
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5208
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 5

    .prologue
    .line 5259
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 5260
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5261
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 5262
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    .line 5263
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5265
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$6702(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;Ljava/util/List;)Ljava/util/List;

    .line 5266
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    .line 5267
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    .line 5268
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5270
    :cond_37
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$6802(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;Ljava/util/List;)Ljava/util/List;

    .line 5271
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5208
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5208
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 2

    .prologue
    .line 5224
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5225
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    .line 5226
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    .line 5228
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5229
    return-object p0
.end method

.method public clearActivity()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 2

    .prologue
    .line 5421
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    .line 5422
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5424
    return-object p0
.end method

.method public clearMissingActivity()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 2

    .prologue
    .line 5510
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    .line 5511
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5513
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5208
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5208
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 3

    .prologue
    .line 5233
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

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
    .line 5208
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 5361
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getActivityCount()I
    .registers 2

    .prologue
    .line 5358
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

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
    .line 5355
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5208
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5208
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 2

    .prologue
    .line 5237
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method public getMissingActivity(I)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 5450
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    return-object v0
.end method

.method public getMissingActivityCount()I
    .registers 2

    .prologue
    .line 5447
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMissingActivityList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5444
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 5208
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

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
    .line 5208
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5314
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5315
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2c

    .line 5320
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5322
    :sswitch_d
    return-object p0

    .line 5327
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    .line 5328
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5329
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    goto :goto_0

    .line 5333
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    .line 5334
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5335
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->addMissingActivity(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    goto :goto_0

    .line 5315
    :sswitch_data_2c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 5275
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5296
    :cond_6
    :goto_6
    return-object p0

    .line 5276
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$6700(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 5277
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 5278
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$6700(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    .line 5279
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5286
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$6800(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5287
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 5288
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$6800(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    .line 5289
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 5281
    :cond_44
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5282
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$6700(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 5291
    :cond_51
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5292
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$6800(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5375
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5376
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5378
    return-object p0
.end method

.method public setActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5365
    if-nez p2, :cond_8

    .line 5366
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5368
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5369
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5371
    return-object p0
.end method

.method public setMissingActivity(ILcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5464
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5465
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5467
    return-object p0
.end method

.method public setMissingActivity(ILcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5454
    if-nez p2, :cond_8

    .line 5455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5457
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5458
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5460
    return-object p0
.end method
