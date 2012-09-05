.class public final Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$AudienceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Audience;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
        "Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$AudienceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private circle_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
            ">;"
        }
    .end annotation
.end field

.field private public_:Z

.field private user_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10242
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    .line 10473
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    .line 10243
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->maybeForceBuilderInitialization()V

    .line 10244
    return-void
.end method

.method static synthetic access$13100(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10237
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13200()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 1

    .prologue
    .line 10237
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10281
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 10282
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 10283
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 10286
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 1

    .prologue
    .line 10249
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCircleIsMutable()V
    .registers 3

    .prologue
    .line 10476
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 10477
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    .line 10478
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10480
    :cond_16
    return-void
.end method

.method private ensureUserIsMutable()V
    .registers 3

    .prologue
    .line 10387
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 10388
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    .line 10389
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10391
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10247
    return-void
.end method


# virtual methods
.method public addAllCircle(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;"
        }
    .end annotation

    .prologue
    .line 10543
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 10544
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10546
    return-object p0
.end method

.method public addAllUser(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;"
        }
    .end annotation

    .prologue
    .line 10454
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 10455
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10457
    return-object p0
.end method

.method public addCircle(ILcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10536
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 10537
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10539
    return-object p0
.end method

.method public addCircle(ILcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10519
    if-nez p2, :cond_8

    .line 10520
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10522
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 10523
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10525
    return-object p0
.end method

.method public addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 10529
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 10530
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10532
    return-object p0
.end method

.method public addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10509
    if-nez p1, :cond_8

    .line 10510
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10512
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 10513
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10515
    return-object p0
.end method

.method public addUser(ILcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10447
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 10448
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10450
    return-object p0
.end method

.method public addUser(ILcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10430
    if-nez p2, :cond_8

    .line 10431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10433
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 10434
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10436
    return-object p0
.end method

.method public addUser(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 10440
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 10441
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10443
    return-object p0
.end method

.method public addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10420
    if-nez p1, :cond_8

    .line 10421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10423
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 10424
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10426
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 3

    .prologue
    .line 10272
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 10273
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10274
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10276
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10237
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 6

    .prologue
    .line 10290
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 10291
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10292
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10293
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 10294
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    .line 10295
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10297
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$13402(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/util/List;)Ljava/util/List;

    .line 10298
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    .line 10299
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    .line 10300
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10302
    :cond_38
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$13502(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/util/List;)Ljava/util/List;

    .line 10303
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 10304
    or-int/lit8 v2, v2, 0x1

    .line 10306
    :cond_44
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->public_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->public_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$13602(Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)Z

    .line 10307
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$13702(Lcom/google/wireless/tacotruck/proto/Data$Audience;I)I

    .line 10308
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10237
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10237
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 2

    .prologue
    .line 10253
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    .line 10255
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    .line 10257
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->public_:Z

    .line 10259
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10260
    return-object p0
.end method

.method public clearCircle()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 2

    .prologue
    .line 10549
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    .line 10550
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10552
    return-object p0
.end method

.method public clearPublic()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10576
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->public_:Z

    .line 10579
    return-object p0
.end method

.method public clearUser()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 2

    .prologue
    .line 10460
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    .line 10461
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10463
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10237
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10237
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 3

    .prologue
    .line 10264
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

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
    .line 10237
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 3
    .parameter "index"

    .prologue
    .line 10489
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    return-object v0
.end method

.method public getCircleCount()I
    .registers 2

    .prologue
    .line 10486
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCircleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10483
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10237
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10237
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 10268
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method public getPublic()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10567
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->public_:Z

    return v0
.end method

.method public getUser(I)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 3
    .parameter "index"

    .prologue
    .line 10400
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getUserCount()I
    .registers 2

    .prologue
    .line 10397
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10394
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasPublic()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10564
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

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
    .line 10237
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

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
    .line 10237
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10348
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10349
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3a

    .line 10354
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10356
    :sswitch_d
    return-object p0

    .line 10361
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    .line 10362
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 10363
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_0

    .line 10367
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    .line 10368
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 10369
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_0

    .line 10373
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    :sswitch_2c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10374
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->public_:Z

    goto :goto_0

    .line 10349
    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x18 -> :sswitch_2c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 10312
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10336
    :cond_6
    :goto_6
    return-object p0

    .line 10313
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$13400(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 10314
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 10315
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$13400(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    .line 10316
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10323
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$13500(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 10324
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 10325
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$13500(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    .line 10326
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10333
    :cond_43
    :goto_43
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->hasPublic()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10334
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getPublic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->setPublic(Z)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_6

    .line 10318
    :cond_51
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 10319
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$13400(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 10328
    :cond_5e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 10329
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$13500(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_43
.end method

.method public setCircle(ILcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10503
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 10504
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10506
    return-object p0
.end method

.method public setCircle(ILcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10493
    if-nez p2, :cond_8

    .line 10494
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10496
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 10497
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10499
    return-object p0
.end method

.method public setPublic(Z)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10570
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10571
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->public_:Z

    .line 10573
    return-object p0
.end method

.method public setUser(ILcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10414
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 10415
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10417
    return-object p0
.end method

.method public setUser(ILcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10404
    if-nez p2, :cond_8

    .line 10405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10407
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 10408
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10410
    return-object p0
.end method
