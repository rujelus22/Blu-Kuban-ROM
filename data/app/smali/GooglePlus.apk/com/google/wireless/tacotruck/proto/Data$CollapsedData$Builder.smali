.class public final Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CollapsedDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;",
        "Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$CollapsedDataOrBuilder;"
    }
.end annotation


# instance fields
.field private aclDisplay_:Ljava/lang/Object;

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

.field private creationMsec_:J

.field private isPublic_:Z

.field private lastModifiedMsec_:J

.field private likeCount_:I

.field private locationClusterId_:Ljava/lang/Object;

.field private locationName_:Ljava/lang/Object;

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

.field private photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

.field private reshareCount_:I

.field private totalCommentCount_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3238
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3510
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    .line 3620
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    .line 3740
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    .line 3829
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3872
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    .line 3908
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    .line 3239
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->maybeForceBuilderInitialization()V

    .line 3240
    return-void
.end method

.method static synthetic access$3400()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 1

    .prologue
    .line 3233
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 1

    .prologue
    .line 3245
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCommentIsMutable()V
    .registers 3

    .prologue
    .line 3743
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 3744
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    .line 3745
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3747
    :cond_17
    return-void
.end method

.method private ensureMediaIsMutable()V
    .registers 3

    .prologue
    .line 3513
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 3514
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    .line 3515
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3517
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3243
    return-void
.end method


# virtual methods
.method public addAllComment(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;"
        }
    .end annotation

    .prologue
    .line 3810
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Comment;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3811
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3813
    return-object p0
.end method

.method public addAllMedia(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Media;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;"
        }
    .end annotation

    .prologue
    .line 3580
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3581
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3583
    return-object p0
.end method

.method public addComment(ILcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3803
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3804
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3806
    return-object p0
.end method

.method public addComment(ILcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3786
    if-nez p2, :cond_8

    .line 3787
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3789
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3790
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3792
    return-object p0
.end method

.method public addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3796
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3797
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3799
    return-object p0
.end method

.method public addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3776
    if-nez p1, :cond_8

    .line 3777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3779
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3780
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3782
    return-object p0
.end method

.method public addMedia(ILcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3573
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3574
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3576
    return-object p0
.end method

.method public addMedia(ILcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3556
    if-nez p2, :cond_8

    .line 3557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3559
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3560
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3562
    return-object p0
.end method

.method public addMedia(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3566
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3567
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3569
    return-object p0
.end method

.method public addMedia(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3546
    if-nez p1, :cond_8

    .line 3547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3549
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3550
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3552
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3233
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 3

    .prologue
    .line 3286
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    .line 3287
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3288
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3290
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3233
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 6

    .prologue
    .line 3304
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 3305
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3306
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3307
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 3308
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    .line 3309
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3311
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3602(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/util/List;)Ljava/util/List;

    .line 3312
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 3313
    or-int/lit8 v2, v2, 0x1

    .line 3315
    :cond_2a
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->lastModifiedMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->lastModifiedMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3702(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;J)J

    .line 3316
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 3317
    or-int/lit8 v2, v2, 0x2

    .line 3319
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3802(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3320
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 3321
    or-int/lit8 v2, v2, 0x4

    .line 3323
    :cond_43
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->totalCommentCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->totalCommentCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3902(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;I)I

    .line 3324
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 3325
    or-int/lit8 v2, v2, 0x8

    .line 3327
    :cond_50
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->likeCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->likeCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4002(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;I)I

    .line 3328
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 3329
    or-int/lit8 v2, v2, 0x10

    .line 3331
    :cond_5d
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->reshareCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->reshareCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4102(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;I)I

    .line 3332
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 3333
    or-int/lit8 v2, v2, 0x20

    .line 3335
    :cond_6a
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->isPublic_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->isPublic_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4202(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Z)Z

    .line 3336
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_85

    .line 3337
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    .line 3338
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3340
    :cond_85
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4302(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/util/List;)Ljava/util/List;

    .line 3341
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_92

    .line 3342
    or-int/lit8 v2, v2, 0x40

    .line 3344
    :cond_92
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4402(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3345
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9f

    .line 3346
    or-int/lit16 v2, v2, 0x80

    .line 3348
    :cond_9f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationClusterId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4502(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3349
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_ac

    .line 3350
    or-int/lit16 v2, v2, 0x100

    .line 3352
    :cond_ac
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->aclDisplay_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4602(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3353
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b9

    .line 3354
    or-int/lit16 v2, v2, 0x200

    .line 3356
    :cond_b9
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->creationMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->creationMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4702(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;J)J

    .line 3357
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4802(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;I)I

    .line 3358
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3233
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3233
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 3249
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    .line 3251
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3252
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->lastModifiedMsec_:J

    .line 3253
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3254
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    .line 3255
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3256
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->totalCommentCount_:I

    .line 3257
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3258
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->likeCount_:I

    .line 3259
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3260
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->reshareCount_:I

    .line 3261
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3262
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->isPublic_:Z

    .line 3263
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    .line 3265
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3266
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3267
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3268
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    .line 3269
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3270
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    .line 3271
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3272
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->creationMsec_:J

    .line 3273
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3274
    return-object p0
.end method

.method public clearAclDisplay()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3932
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3933
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getAclDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    .line 3935
    return-object p0
.end method

.method public clearComment()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3816
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    .line 3817
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3819
    return-object p0
.end method

.method public clearCreationMsec()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3

    .prologue
    .line 3958
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3959
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->creationMsec_:J

    .line 3961
    return-object p0
.end method

.method public clearIsPublic()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3733
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->isPublic_:Z

    .line 3736
    return-object p0
.end method

.method public clearLastModifiedMsec()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3

    .prologue
    .line 3613
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3614
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->lastModifiedMsec_:J

    .line 3616
    return-object p0
.end method

.method public clearLikeCount()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3691
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3692
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->likeCount_:I

    .line 3694
    return-object p0
.end method

.method public clearLocationClusterId()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3896
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3897
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationClusterId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    .line 3899
    return-object p0
.end method

.method public clearLocationName()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3644
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3645
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    .line 3647
    return-object p0
.end method

.method public clearMedia()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3586
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    .line 3587
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3589
    return-object p0
.end method

.method public clearPhotoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3865
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3867
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3868
    return-object p0
.end method

.method public clearReshareCount()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3712
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3713
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->reshareCount_:I

    .line 3715
    return-object p0
.end method

.method public clearTotalCommentCount()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3670
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3671
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->totalCommentCount_:I

    .line 3673
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3233
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3233
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3

    .prologue
    .line 3278
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

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
    .line 3233
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAclDisplay()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3913
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    .line 3914
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3915
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3916
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    .line 3919
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

.method public getComment(I)Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 3
    .parameter "index"

    .prologue
    .line 3756
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public getCommentCount()I
    .registers 2

    .prologue
    .line 3753
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

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
    .line 3750
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCreationMsec()J
    .registers 3

    .prologue
    .line 3949
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->creationMsec_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3233
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3233
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 2

    .prologue
    .line 3282
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    return-object v0
.end method

.method public getIsPublic()Z
    .registers 2

    .prologue
    .line 3724
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->isPublic_:Z

    return v0
.end method

.method public getLastModifiedMsec()J
    .registers 3

    .prologue
    .line 3604
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->lastModifiedMsec_:J

    return-wide v0
.end method

.method public getLikeCount()I
    .registers 2

    .prologue
    .line 3682
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->likeCount_:I

    return v0
.end method

.method public getLocationClusterId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3877
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    .line 3878
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3879
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3880
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    .line 3883
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

.method public getLocationName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3625
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    .line 3626
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3627
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3628
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    .line 3631
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

.method public getMedia(I)Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 3
    .parameter "index"

    .prologue
    .line 3526
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Media;

    return-object v0
.end method

.method public getMediaCount()I
    .registers 2

    .prologue
    .line 3523
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

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
    .line 3520
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    .registers 2

    .prologue
    .line 3834
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    return-object v0
.end method

.method public getReshareCount()I
    .registers 2

    .prologue
    .line 3703
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->reshareCount_:I

    return v0
.end method

.method public getTotalCommentCount()I
    .registers 2

    .prologue
    .line 3661
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->totalCommentCount_:I

    return v0
.end method

.method public hasAclDisplay()Z
    .registers 3

    .prologue
    .line 3910
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCreationMsec()Z
    .registers 3

    .prologue
    .line 3946
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasIsPublic()Z
    .registers 3

    .prologue
    .line 3721
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLastModifiedMsec()Z
    .registers 3

    .prologue
    .line 3601
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

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

.method public hasLikeCount()Z
    .registers 3

    .prologue
    .line 3679
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

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

.method public hasLocationClusterId()Z
    .registers 3

    .prologue
    .line 3874
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLocationName()Z
    .registers 3

    .prologue
    .line 3622
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

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

.method public hasPhotoMediaDisplay()Z
    .registers 3

    .prologue
    .line 3831
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasReshareCount()Z
    .registers 3

    .prologue
    .line 3700
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

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

.method public hasTotalCommentCount()Z
    .registers 3

    .prologue
    .line 3658
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 3417
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
    .line 3233
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3233
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

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
    .line 3233
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3425
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3426
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_c2

    .line 3431
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3433
    :sswitch_d
    return-object p0

    .line 3438
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    .line 3439
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3440
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->addMedia(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    goto :goto_0

    .line 3444
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3445
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->lastModifiedMsec_:J

    goto :goto_0

    .line 3449
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3450
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    goto :goto_0

    .line 3454
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3455
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->totalCommentCount_:I

    goto :goto_0

    .line 3459
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3460
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->likeCount_:I

    goto :goto_0

    .line 3464
    :sswitch_51
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3465
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->reshareCount_:I

    goto :goto_0

    .line 3469
    :sswitch_5e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3470
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->isPublic_:Z

    goto :goto_0

    .line 3474
    :sswitch_6b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    .line 3475
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3476
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    goto :goto_0

    .line 3480
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    :sswitch_7a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    .line 3481
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->hasPhotoMediaDisplay()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 3482
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->getPhotoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    .line 3484
    :cond_8b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3485
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setPhotoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    goto/16 :goto_0

    .line 3489
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    :sswitch_97
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3490
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3494
    :sswitch_a5
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3495
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3499
    :sswitch_b3
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3500
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->creationMsec_:J

    goto/16 :goto_0

    .line 3426
    nop

    :sswitch_data_c2
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1d
        0x1a -> :sswitch_2a
        0x20 -> :sswitch_37
        0x28 -> :sswitch_44
        0x30 -> :sswitch_51
        0x38 -> :sswitch_5e
        0x42 -> :sswitch_6b
        0x4a -> :sswitch_7a
        0x52 -> :sswitch_97
        0x5a -> :sswitch_a5
        0x60 -> :sswitch_b3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3362
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3413
    :cond_6
    :goto_6
    return-object p0

    .line 3363
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3600(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 3364
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 3365
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3600(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    .line 3366
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3373
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLastModifiedMsec()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3374
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLastModifiedMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setLastModifiedMsec(J)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3376
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLocationName()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3377
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setLocationName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3379
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasTotalCommentCount()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3380
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getTotalCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setTotalCommentCount(I)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3382
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLikeCount()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 3383
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLikeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setLikeCount(I)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3385
    :cond_59
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasReshareCount()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 3386
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getReshareCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setReshareCount(I)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3388
    :cond_66
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasIsPublic()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3389
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getIsPublic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setIsPublic(Z)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3391
    :cond_73
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4300(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    .line 3392
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 3393
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4300(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    .line 3394
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3401
    :cond_91
    :goto_91
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasPhotoMediaDisplay()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 3402
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getPhotoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->mergePhotoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3404
    :cond_9e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLocationClusterId()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 3405
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setLocationClusterId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3407
    :cond_ab
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasAclDisplay()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 3408
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getAclDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setAclDisplay(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3410
    :cond_b8
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasCreationMsec()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3411
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getCreationMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setCreationMsec(J)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    goto/16 :goto_6

    .line 3368
    :cond_c7
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3369
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3600(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_25

    .line 3396
    :cond_d5
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3397
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4300(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_91
.end method

.method public mergePhotoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3853
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 3855
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3861
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3862
    return-object p0

    .line 3858
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    goto :goto_20
.end method

.method public setAclDisplay(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3923
    if-nez p1, :cond_8

    .line 3924
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3926
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3927
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    .line 3929
    return-object p0
.end method

.method public setComment(ILcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3770
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3771
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3773
    return-object p0
.end method

.method public setComment(ILcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3760
    if-nez p2, :cond_8

    .line 3761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3763
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3764
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3766
    return-object p0
.end method

.method public setCreationMsec(J)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3952
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3953
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->creationMsec_:J

    .line 3955
    return-object p0
.end method

.method public setIsPublic(Z)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3727
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3728
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->isPublic_:Z

    .line 3730
    return-object p0
.end method

.method public setLastModifiedMsec(J)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3607
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3608
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->lastModifiedMsec_:J

    .line 3610
    return-object p0
.end method

.method public setLikeCount(I)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3685
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3686
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->likeCount_:I

    .line 3688
    return-object p0
.end method

.method public setLocationClusterId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3887
    if-nez p1, :cond_8

    .line 3888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3890
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3891
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    .line 3893
    return-object p0
.end method

.method public setLocationName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3635
    if-nez p1, :cond_8

    .line 3636
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3638
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3639
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    .line 3641
    return-object p0
.end method

.method public setMedia(ILcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3540
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3541
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3543
    return-object p0
.end method

.method public setMedia(ILcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3530
    if-nez p2, :cond_8

    .line 3531
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3533
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3534
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3536
    return-object p0
.end method

.method public setPhotoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3847
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3849
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3850
    return-object p0
.end method

.method public setPhotoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3837
    if-nez p1, :cond_8

    .line 3838
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3840
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3842
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3843
    return-object p0
.end method

.method public setReshareCount(I)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3706
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3707
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->reshareCount_:I

    .line 3709
    return-object p0
.end method

.method public setTotalCommentCount(I)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3664
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3665
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->totalCommentCount_:I

    .line 3667
    return-object p0
.end method
