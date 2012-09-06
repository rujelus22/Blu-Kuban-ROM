.class public final Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ExpandedDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;",
        "Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$ExpandedDataOrBuilder;"
    }
.end annotation


# instance fields
.field private actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

.field private bitField0_:I

.field private comment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
            ">;"
        }
    .end annotation
.end field

.field private likingUserId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private media_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Media;",
            ">;"
        }
    .end annotation
.end field

.field private reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4283
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4502
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    .line 4591
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    .line 4680
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4723
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    .line 4768
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4811
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 4284
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->maybeForceBuilderInitialization()V

    .line 4285
    return-void
.end method

.method static synthetic access$5000()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 1

    .prologue
    .line 4278
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 1

    .prologue
    .line 4290
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCommentIsMutable()V
    .registers 3

    .prologue
    .line 4594
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 4595
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    .line 4596
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4598
    :cond_16
    return-void
.end method

.method private ensureLikingUserIdIsMutable()V
    .registers 3

    .prologue
    .line 4725
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 4726
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    .line 4727
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4729
    :cond_17
    return-void
.end method

.method private ensureMediaIsMutable()V
    .registers 3

    .prologue
    .line 4505
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 4506
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    .line 4507
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4509
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4288
    return-void
.end method


# virtual methods
.method public addAllComment(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;"
        }
    .end annotation

    .prologue
    .line 4661
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Comment;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4662
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4664
    return-object p0
.end method

.method public addAllLikingUserId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;"
        }
    .end annotation

    .prologue
    .line 4755
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureLikingUserIdIsMutable()V

    .line 4756
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4758
    return-object p0
.end method

.method public addAllMedia(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Media;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;"
        }
    .end annotation

    .prologue
    .line 4572
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4573
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4575
    return-object p0
.end method

.method public addComment(ILcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4654
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4655
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4657
    return-object p0
.end method

.method public addComment(ILcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4637
    if-nez p2, :cond_8

    .line 4638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4640
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4641
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4643
    return-object p0
.end method

.method public addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4647
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4648
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4650
    return-object p0
.end method

.method public addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4627
    if-nez p1, :cond_8

    .line 4628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4630
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4631
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4633
    return-object p0
.end method

.method public addLikingUserId(J)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 4748
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureLikingUserIdIsMutable()V

    .line 4749
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4751
    return-object p0
.end method

.method public addMedia(ILcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4565
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4566
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4568
    return-object p0
.end method

.method public addMedia(ILcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4548
    if-nez p2, :cond_8

    .line 4549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4551
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4552
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4554
    return-object p0
.end method

.method public addMedia(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4558
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4559
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4561
    return-object p0
.end method

.method public addMedia(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4538
    if-nez p1, :cond_8

    .line 4539
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4541
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4542
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4544
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 3

    .prologue
    .line 4319
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    .line 4320
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4321
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4323
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 6

    .prologue
    .line 4337
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 4338
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4339
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4340
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 4341
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    .line 4342
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4344
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5202(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Ljava/util/List;)Ljava/util/List;

    .line 4345
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    .line 4346
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    .line 4347
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4349
    :cond_38
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5302(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Ljava/util/List;)Ljava/util/List;

    .line 4350
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 4351
    or-int/lit8 v2, v2, 0x1

    .line 4353
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5402(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4354
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5f

    .line 4355
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    .line 4356
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4358
    :cond_5f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5502(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Ljava/util/List;)Ljava/util/List;

    .line 4359
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6c

    .line 4360
    or-int/lit8 v2, v2, 0x2

    .line 4362
    :cond_6c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5602(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4363
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_79

    .line 4364
    or-int/lit8 v2, v2, 0x4

    .line 4366
    :cond_79
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5702(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 4367
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5802(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;I)I

    .line 4368
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4294
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4295
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    .line 4296
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    .line 4298
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4299
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4300
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4301
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    .line 4302
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4303
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4304
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4305
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 4306
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4307
    return-object p0
.end method

.method public clearActionState()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4847
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 4849
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4850
    return-object p0
.end method

.method public clearComment()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4667
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    .line 4668
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4670
    return-object p0
.end method

.method public clearLikingUserId()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4761
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    .line 4762
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4764
    return-object p0
.end method

.method public clearLocation()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4716
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4718
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4719
    return-object p0
.end method

.method public clearMedia()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4578
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    .line 4579
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4581
    return-object p0
.end method

.method public clearReshareData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4804
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4806
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4807
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3

    .prologue
    .line 4311
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

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
    .line 4278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2

    .prologue
    .line 4816
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    return-object v0
.end method

.method public getComment(I)Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 3
    .parameter "index"

    .prologue
    .line 4607
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public getCommentCount()I
    .registers 2

    .prologue
    .line 4604
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCommentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4601
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 2

    .prologue
    .line 4315
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    return-object v0
.end method

.method public getLikingUserId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 4738
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLikingUserIdCount()I
    .registers 2

    .prologue
    .line 4735
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLikingUserIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4732
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 4685
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getMedia(I)Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 3
    .parameter "index"

    .prologue
    .line 4518
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Media;

    return-object v0
.end method

.method public getMediaCount()I
    .registers 2

    .prologue
    .line 4515
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMediaList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4512
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReshareData()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 2

    .prologue
    .line 4773
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    return-object v0
.end method

.method public hasActionState()Z
    .registers 3

    .prologue
    .line 4813
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 4682
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

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

.method public hasReshareData()Z
    .registers 3

    .prologue
    .line 4770
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

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
    .line 4416
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4417
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4419
    const/4 v0, 0x0

    .line 4422
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4835
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4837
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 4843
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4844
    return-object p0

    .line 4840
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    goto :goto_20
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
    .line 4278
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4278
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

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
    .line 4278
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 4431
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_ae

    .line 4436
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4438
    :sswitch_d
    return-object p0

    .line 4443
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v2

    .line 4444
    .local v2, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4445
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->addMedia(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto :goto_0

    .line 4449
    .end local v2           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v2

    .line 4450
    .local v2, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4451
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto :goto_0

    .line 4455
    .end local v2           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    :sswitch_2c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v2

    .line 4456
    .local v2, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->hasLocation()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 4457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 4459
    :cond_3d
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4460
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto :goto_0

    .line 4464
    .end local v2           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :sswitch_48
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureLikingUserIdIsMutable()V

    .line 4465
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4469
    :sswitch_59
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 4470
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 4471
    .local v1, limit:I
    :goto_61
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_6f

    .line 4472
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->addLikingUserId(J)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto :goto_61

    .line 4474
    :cond_6f
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 4478
    .end local v0           #length:I
    .end local v1           #limit:I
    :sswitch_73
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v2

    .line 4479
    .local v2, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->hasReshareData()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 4480
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->getReshareData()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    .line 4482
    :cond_84
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4483
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->setReshareData(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto/16 :goto_0

    .line 4487
    .end local v2           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    :sswitch_90
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v2

    .line 4488
    .local v2, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->hasActionState()Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 4489
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 4491
    :cond_a1
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4492
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->setActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto/16 :goto_0

    .line 4431
    nop

    :sswitch_data_ae
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x1a -> :sswitch_2c
        0x20 -> :sswitch_48
        0x22 -> :sswitch_59
        0x2a -> :sswitch_73
        0x32 -> :sswitch_90
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 4372
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4412
    :cond_6
    :goto_6
    return-object p0

    .line 4373
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5200(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4374
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 4375
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5200(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    .line 4376
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4383
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5300(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 4384
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 4385
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5300(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    .line 4386
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4393
    :cond_43
    :goto_43
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 4394
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    .line 4396
    :cond_50
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5500(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 4397
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 4398
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5500(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    .line 4399
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4406
    :cond_6e
    :goto_6e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->hasReshareData()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 4407
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getReshareData()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeReshareData(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    .line 4409
    :cond_7b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->hasActionState()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4410
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto/16 :goto_6

    .line 4378
    :cond_8a
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4379
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5200(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 4388
    :cond_97
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4389
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5300(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_43

    .line 4401
    :cond_a4
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureLikingUserIdIsMutable()V

    .line 4402
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5500(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6e
.end method

.method public mergeLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4704
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 4706
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4712
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4713
    return-object p0

    .line 4709
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    goto :goto_1f
.end method

.method public mergeReshareData(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4792
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4794
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4800
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4801
    return-object p0

    .line 4797
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    goto :goto_20
.end method

.method public setActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4829
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 4831
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4832
    return-object p0
.end method

.method public setActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4819
    if-nez p1, :cond_8

    .line 4820
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4822
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 4824
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4825
    return-object p0
.end method

.method public setComment(ILcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4621
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4622
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4624
    return-object p0
.end method

.method public setComment(ILcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4611
    if-nez p2, :cond_8

    .line 4612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4614
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4615
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4617
    return-object p0
.end method

.method public setLikingUserId(IJ)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4742
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureLikingUserIdIsMutable()V

    .line 4743
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4745
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4698
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4700
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4701
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4688
    if-nez p1, :cond_8

    .line 4689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4691
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4693
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4694
    return-object p0
.end method

.method public setMedia(ILcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4532
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4533
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4535
    return-object p0
.end method

.method public setMedia(ILcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4522
    if-nez p2, :cond_8

    .line 4523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4525
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4526
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4528
    return-object p0
.end method

.method public setReshareData(Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4786
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4788
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4789
    return-object p0
.end method

.method public setReshareData(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4776
    if-nez p1, :cond_8

    .line 4777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4779
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4781
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4782
    return-object p0
.end method
