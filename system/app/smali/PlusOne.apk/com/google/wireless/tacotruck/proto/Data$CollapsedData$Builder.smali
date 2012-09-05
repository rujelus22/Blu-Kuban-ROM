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
    .line 2897
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    .line 3279
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    .line 3399
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    .line 3488
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    .line 3567
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    .line 2898
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->maybeForceBuilderInitialization()V

    .line 2899
    return-void
.end method

.method static synthetic access$3000()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 1

    .prologue
    .line 2892
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 1

    .prologue
    .line 2904
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCommentIsMutable()V
    .registers 3

    .prologue
    .line 3402
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 3403
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    .line 3404
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3406
    :cond_17
    return-void
.end method

.method private ensureMediaIsMutable()V
    .registers 3

    .prologue
    .line 3172
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 3173
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    .line 3174
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3176
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2902
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
    .line 3469
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Comment;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3470
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3472
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
    .line 3239
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3240
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3242
    return-object p0
.end method

.method public addComment(ILcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3462
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3463
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3465
    return-object p0
.end method

.method public addComment(ILcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3445
    if-nez p2, :cond_8

    .line 3446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3448
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3449
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3451
    return-object p0
.end method

.method public addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3455
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3456
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3458
    return-object p0
.end method

.method public addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3435
    if-nez p1, :cond_8

    .line 3436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3438
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3439
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3441
    return-object p0
.end method

.method public addMedia(ILcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3232
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3233
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3235
    return-object p0
.end method

.method public addMedia(ILcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3215
    if-nez p2, :cond_8

    .line 3216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3218
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3219
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3221
    return-object p0
.end method

.method public addMedia(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3225
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3226
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3228
    return-object p0
.end method

.method public addMedia(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3205
    if-nez p1, :cond_8

    .line 3206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3208
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3209
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3211
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 3

    .prologue
    .line 2945
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    .line 2946
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2947
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2949
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 6

    .prologue
    .line 2963
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 2964
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2965
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2966
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 2967
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    .line 2968
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2970
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3202(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/util/List;)Ljava/util/List;

    .line 2971
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 2972
    or-int/lit8 v2, v2, 0x1

    .line 2974
    :cond_2a
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->lastModifiedMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->lastModifiedMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3302(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;J)J

    .line 2975
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 2976
    or-int/lit8 v2, v2, 0x2

    .line 2978
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3402(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2979
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 2980
    or-int/lit8 v2, v2, 0x4

    .line 2982
    :cond_43
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->totalCommentCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->totalCommentCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3502(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;I)I

    .line 2983
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 2984
    or-int/lit8 v2, v2, 0x8

    .line 2986
    :cond_50
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->likeCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->likeCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3602(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;I)I

    .line 2987
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 2988
    or-int/lit8 v2, v2, 0x10

    .line 2990
    :cond_5d
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->reshareCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->reshareCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3702(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;I)I

    .line 2991
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 2992
    or-int/lit8 v2, v2, 0x20

    .line 2994
    :cond_6a
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->isPublic_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->isPublic_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3802(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Z)Z

    .line 2995
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_85

    .line 2996
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    .line 2997
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2999
    :cond_85
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3902(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/util/List;)Ljava/util/List;

    .line 3000
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_92

    .line 3001
    or-int/lit8 v2, v2, 0x40

    .line 3003
    :cond_92
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4002(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3004
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9f

    .line 3005
    or-int/lit16 v2, v2, 0x80

    .line 3007
    :cond_9f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->locationClusterId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4102(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_ac

    .line 3009
    or-int/lit16 v2, v2, 0x100

    .line 3011
    :cond_ac
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->aclDisplay_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4202(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3012
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b9

    .line 3013
    or-int/lit16 v2, v2, 0x200

    .line 3015
    :cond_b9
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->creationMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->creationMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4302(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;J)J

    .line 3016
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$4402(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;I)I

    .line 3017
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2908
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2909
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    .line 2910
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2911
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->lastModifiedMsec_:J

    .line 2912
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2913
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    .line 2914
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2915
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->totalCommentCount_:I

    .line 2916
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2917
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->likeCount_:I

    .line 2918
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2919
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->reshareCount_:I

    .line 2920
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2921
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->isPublic_:Z

    .line 2922
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2923
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    .line 2924
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2925
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 2926
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    .line 2928
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2929
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    .line 2930
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2931
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->creationMsec_:J

    .line 2932
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 2933
    return-object p0
.end method

.method public clearAclDisplay()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3591
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3592
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getAclDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    .line 3594
    return-object p0
.end method

.method public clearComment()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3475
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    .line 3476
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3478
    return-object p0
.end method

.method public clearCreationMsec()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3

    .prologue
    .line 3617
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3618
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->creationMsec_:J

    .line 3620
    return-object p0
.end method

.method public clearIsPublic()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3392
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->isPublic_:Z

    .line 3395
    return-object p0
.end method

.method public clearLastModifiedMsec()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3

    .prologue
    .line 3272
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3273
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->lastModifiedMsec_:J

    .line 3275
    return-object p0
.end method

.method public clearLikeCount()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3350
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3351
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->likeCount_:I

    .line 3353
    return-object p0
.end method

.method public clearLocationClusterId()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3555
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3556
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationClusterId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    .line 3558
    return-object p0
.end method

.method public clearLocationName()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3303
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3304
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    .line 3306
    return-object p0
.end method

.method public clearMedia()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    .line 3246
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3248
    return-object p0
.end method

.method public clearPhotoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3524
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3526
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3527
    return-object p0
.end method

.method public clearReshareCount()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3371
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3372
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->reshareCount_:I

    .line 3374
    return-object p0
.end method

.method public clearTotalCommentCount()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 2

    .prologue
    .line 3329
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3330
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->totalCommentCount_:I

    .line 3332
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3

    .prologue
    .line 2937
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
    .line 2892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAclDisplay()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3572
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    .line 3573
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3574
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3575
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    .line 3578
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
    .line 3415
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public getCommentCount()I
    .registers 2

    .prologue
    .line 3412
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
    .line 3409
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCreationMsec()J
    .registers 3

    .prologue
    .line 3608
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->creationMsec_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2892
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 2

    .prologue
    .line 2941
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    return-object v0
.end method

.method public getIsPublic()Z
    .registers 2

    .prologue
    .line 3383
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->isPublic_:Z

    return v0
.end method

.method public getLastModifiedMsec()J
    .registers 3

    .prologue
    .line 3263
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->lastModifiedMsec_:J

    return-wide v0
.end method

.method public getLikeCount()I
    .registers 2

    .prologue
    .line 3341
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->likeCount_:I

    return v0
.end method

.method public getLocationClusterId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3536
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    .line 3537
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3538
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3539
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    .line 3542
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
    .line 3284
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    .line 3285
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3286
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3287
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    .line 3290
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
    .line 3185
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Media;

    return-object v0
.end method

.method public getMediaCount()I
    .registers 2

    .prologue
    .line 3182
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
    .line 3179
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    .registers 2

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    return-object v0
.end method

.method public getReshareCount()I
    .registers 2

    .prologue
    .line 3362
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->reshareCount_:I

    return v0
.end method

.method public getTotalCommentCount()I
    .registers 2

    .prologue
    .line 3320
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->totalCommentCount_:I

    return v0
.end method

.method public hasAclDisplay()Z
    .registers 3

    .prologue
    .line 3569
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
    .line 3605
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
    .line 3380
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
    .line 3260
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
    .line 3338
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
    .line 3533
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
    .line 3281
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
    .line 3490
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
    .line 3359
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
    .line 3317
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
    .line 2892
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

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
    .line 2892
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
    .line 3084
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3085
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_c2

    .line 3090
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3092
    :sswitch_d
    return-object p0

    .line 3097
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    .line 3098
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3099
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->addMedia(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    goto :goto_0

    .line 3103
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3104
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->lastModifiedMsec_:J

    goto :goto_0

    .line 3108
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3109
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    goto :goto_0

    .line 3113
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3114
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->totalCommentCount_:I

    goto :goto_0

    .line 3118
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3119
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->likeCount_:I

    goto :goto_0

    .line 3123
    :sswitch_51
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3124
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->reshareCount_:I

    goto :goto_0

    .line 3128
    :sswitch_5e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3129
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->isPublic_:Z

    goto :goto_0

    .line 3133
    :sswitch_6b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v0

    .line 3134
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3135
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    goto :goto_0

    .line 3139
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    :sswitch_7a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    .line 3140
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->hasPhotoMediaDisplay()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 3141
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->getPhotoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    .line 3143
    :cond_8b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3144
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setPhotoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    goto/16 :goto_0

    .line 3148
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    :sswitch_97
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3149
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3153
    :sswitch_a5
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3154
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3158
    :sswitch_b3
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3159
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->creationMsec_:J

    goto/16 :goto_0

    .line 3085
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
    .line 3021
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3072
    :cond_6
    :goto_6
    return-object p0

    .line 3022
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3200(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 3023
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 3024
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3200(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    .line 3025
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3032
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLastModifiedMsec()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3033
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLastModifiedMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setLastModifiedMsec(J)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3035
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLocationName()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3036
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setLocationName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3038
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasTotalCommentCount()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3039
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getTotalCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setTotalCommentCount(I)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3041
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLikeCount()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 3042
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLikeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setLikeCount(I)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3044
    :cond_59
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasReshareCount()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 3045
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getReshareCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setReshareCount(I)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3047
    :cond_66
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasIsPublic()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3048
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getIsPublic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setIsPublic(Z)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3050
    :cond_73
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3900(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    .line 3051
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 3052
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3900(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    .line 3053
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3060
    :cond_91
    :goto_91
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasPhotoMediaDisplay()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 3061
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getPhotoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->mergePhotoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3063
    :cond_9e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLocationClusterId()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 3064
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setLocationClusterId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3066
    :cond_ab
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasAclDisplay()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 3067
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getAclDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setAclDisplay(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    .line 3069
    :cond_b8
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasCreationMsec()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3070
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getCreationMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->setCreationMsec(J)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;

    goto/16 :goto_6

    .line 3027
    :cond_c7
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3028
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3200(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_25

    .line 3055
    :cond_d5
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3056
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->access$3900(Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_91
.end method

.method public mergePhotoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3512
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 3514
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3520
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3521
    return-object p0

    .line 3517
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    goto :goto_20
.end method

.method public setAclDisplay(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3582
    if-nez p1, :cond_8

    .line 3583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3585
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3586
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->aclDisplay_:Ljava/lang/Object;

    .line 3588
    return-object p0
.end method

.method public setComment(ILcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3429
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3430
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3432
    return-object p0
.end method

.method public setComment(ILcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3419
    if-nez p2, :cond_8

    .line 3420
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3422
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureCommentIsMutable()V

    .line 3423
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3425
    return-object p0
.end method

.method public setCreationMsec(J)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3611
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3612
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->creationMsec_:J

    .line 3614
    return-object p0
.end method

.method public setIsPublic(Z)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3386
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3387
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->isPublic_:Z

    .line 3389
    return-object p0
.end method

.method public setLastModifiedMsec(J)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3266
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3267
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->lastModifiedMsec_:J

    .line 3269
    return-object p0
.end method

.method public setLikeCount(I)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3344
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3345
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->likeCount_:I

    .line 3347
    return-object p0
.end method

.method public setLocationClusterId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
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
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3550
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationClusterId_:Ljava/lang/Object;

    .line 3552
    return-object p0
.end method

.method public setLocationName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3294
    if-nez p1, :cond_8

    .line 3295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3297
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3298
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->locationName_:Ljava/lang/Object;

    .line 3300
    return-object p0
.end method

.method public setMedia(ILcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3199
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3200
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3202
    return-object p0
.end method

.method public setMedia(ILcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3189
    if-nez p2, :cond_8

    .line 3190
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3192
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->ensureMediaIsMutable()V

    .line 3193
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3195
    return-object p0
.end method

.method public setPhotoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3506
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3508
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3509
    return-object p0
.end method

.method public setPhotoMediaDisplay(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3496
    if-nez p1, :cond_8

    .line 3497
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3499
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->photoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 3501
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3502
    return-object p0
.end method

.method public setReshareCount(I)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3365
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3366
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->reshareCount_:I

    .line 3368
    return-object p0
.end method

.method public setTotalCommentCount(I)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3323
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->bitField0_:I

    .line 3324
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData$Builder;->totalCommentCount_:I

    .line 3326
    return-object p0
.end method
