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
    .line 3942
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    .line 4250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    .line 4339
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4382
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    .line 4427
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4470
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 3943
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->maybeForceBuilderInitialization()V

    .line 3944
    return-void
.end method

.method static synthetic access$4600()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 1

    .prologue
    .line 3937
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 1

    .prologue
    .line 3949
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCommentIsMutable()V
    .registers 3

    .prologue
    .line 4253
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 4254
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    .line 4255
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4257
    :cond_16
    return-void
.end method

.method private ensureLikingUserIdIsMutable()V
    .registers 3

    .prologue
    .line 4384
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 4385
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    .line 4386
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4388
    :cond_17
    return-void
.end method

.method private ensureMediaIsMutable()V
    .registers 3

    .prologue
    .line 4164
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 4165
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    .line 4166
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4168
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3947
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
    .line 4320
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Comment;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4321
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4323
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
    .line 4414
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureLikingUserIdIsMutable()V

    .line 4415
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4417
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
    .line 4231
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4232
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4234
    return-object p0
.end method

.method public addComment(ILcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4313
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4314
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4316
    return-object p0
.end method

.method public addComment(ILcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4296
    if-nez p2, :cond_8

    .line 4297
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4299
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4300
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4302
    return-object p0
.end method

.method public addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4306
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4307
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4309
    return-object p0
.end method

.method public addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4286
    if-nez p1, :cond_8

    .line 4287
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4289
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4290
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4292
    return-object p0
.end method

.method public addLikingUserId(J)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 4407
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureLikingUserIdIsMutable()V

    .line 4408
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4410
    return-object p0
.end method

.method public addMedia(ILcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4224
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4225
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4227
    return-object p0
.end method

.method public addMedia(ILcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4207
    if-nez p2, :cond_8

    .line 4208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4210
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4211
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4213
    return-object p0
.end method

.method public addMedia(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4217
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4218
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4220
    return-object p0
.end method

.method public addMedia(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4197
    if-nez p1, :cond_8

    .line 4198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4200
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4201
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4203
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 3

    .prologue
    .line 3978
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    .line 3979
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3980
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3982
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3937
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 6

    .prologue
    .line 3996
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 3997
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 3998
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3999
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 4000
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    .line 4001
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4003
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$4802(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Ljava/util/List;)Ljava/util/List;

    .line 4004
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    .line 4005
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    .line 4006
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4008
    :cond_38
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$4902(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Ljava/util/List;)Ljava/util/List;

    .line 4009
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 4010
    or-int/lit8 v2, v2, 0x1

    .line 4012
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5002(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4013
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5f

    .line 4014
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    .line 4015
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4017
    :cond_5f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5102(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Ljava/util/List;)Ljava/util/List;

    .line 4018
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6c

    .line 4019
    or-int/lit8 v2, v2, 0x2

    .line 4021
    :cond_6c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5202(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4022
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_79

    .line 4023
    or-int/lit8 v2, v2, 0x4

    .line 4025
    :cond_79
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5302(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 4026
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5402(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;I)I

    .line 4027
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3937
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3937
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 3953
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3954
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    .line 3955
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 3956
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    .line 3957
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 3958
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3959
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 3960
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    .line 3961
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 3962
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 3963
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 3964
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 3965
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 3966
    return-object p0
.end method

.method public clearActionState()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4506
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 4508
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4509
    return-object p0
.end method

.method public clearComment()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    .line 4327
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4329
    return-object p0
.end method

.method public clearLikingUserId()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4420
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    .line 4421
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4423
    return-object p0
.end method

.method public clearLocation()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4375
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4377
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4378
    return-object p0
.end method

.method public clearMedia()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    .line 4238
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4240
    return-object p0
.end method

.method public clearReshareData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2

    .prologue
    .line 4463
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4465
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4466
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3937
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3937
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3

    .prologue
    .line 3970
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
    .line 3937
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2

    .prologue
    .line 4475
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    return-object v0
.end method

.method public getComment(I)Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 3
    .parameter "index"

    .prologue
    .line 4266
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public getCommentCount()I
    .registers 2

    .prologue
    .line 4263
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
    .line 4260
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3937
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3937
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 2

    .prologue
    .line 3974
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    return-object v0
.end method

.method public getLikingUserId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 4397
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
    .line 4394
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
    .line 4391
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 4344
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getMedia(I)Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 3
    .parameter "index"

    .prologue
    .line 4177
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Media;

    return-object v0
.end method

.method public getMediaCount()I
    .registers 2

    .prologue
    .line 4174
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
    .line 4171
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReshareData()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 2

    .prologue
    .line 4432
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    return-object v0
.end method

.method public hasActionState()Z
    .registers 3

    .prologue
    .line 4472
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
    .line 4341
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
    .line 4429
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

.method public mergeActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4494
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4496
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 4502
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4503
    return-object p0

    .line 4499
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
    .line 3937
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

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
    .line 3937
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
    .line 4089
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 4090
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_ae

    .line 4095
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4097
    :sswitch_d
    return-object p0

    .line 4102
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v2

    .line 4103
    .local v2, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4104
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->addMedia(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto :goto_0

    .line 4108
    .end local v2           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v2

    .line 4109
    .local v2, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4110
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto :goto_0

    .line 4114
    .end local v2           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    :sswitch_2c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v2

    .line 4115
    .local v2, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->hasLocation()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 4116
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 4118
    :cond_3d
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4119
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto :goto_0

    .line 4123
    .end local v2           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :sswitch_48
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureLikingUserIdIsMutable()V

    .line 4124
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4128
    :sswitch_59
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 4129
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 4130
    .local v1, limit:I
    :goto_61
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_6f

    .line 4131
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->addLikingUserId(J)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto :goto_61

    .line 4133
    :cond_6f
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 4137
    .end local v0           #length:I
    .end local v1           #limit:I
    :sswitch_73
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v2

    .line 4138
    .local v2, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->hasReshareData()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 4139
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->getReshareData()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    .line 4141
    :cond_84
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4142
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->setReshareData(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto/16 :goto_0

    .line 4146
    .end local v2           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;
    :sswitch_90
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    move-result-object v2

    .line 4147
    .local v2, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->hasActionState()Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 4148
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;

    .line 4150
    :cond_a1
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4151
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->setActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto/16 :goto_0

    .line 4090
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
    .line 4031
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4071
    :cond_6
    :goto_6
    return-object p0

    .line 4032
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$4800(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4033
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 4034
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$4800(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    .line 4035
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4042
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$4900(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 4043
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 4044
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$4900(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    .line 4045
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4052
    :cond_43
    :goto_43
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 4053
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    .line 4055
    :cond_50
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5100(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 4056
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 4057
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5100(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    .line 4058
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4065
    :cond_6e
    :goto_6e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->hasReshareData()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 4066
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getReshareData()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeReshareData(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    .line 4068
    :cond_7b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->hasActionState()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4069
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    goto/16 :goto_6

    .line 4037
    :cond_8a
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4038
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$4800(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 4047
    :cond_97
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4048
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$4900(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_43

    .line 4060
    :cond_a4
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureLikingUserIdIsMutable()V

    .line 4061
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->access$5100(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6e
.end method

.method public mergeLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4363
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 4365
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4371
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4372
    return-object p0

    .line 4368
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    goto :goto_1f
.end method

.method public mergeReshareData(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4451
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4453
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4459
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4460
    return-object p0

    .line 4456
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    goto :goto_20
.end method

.method public setActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4488
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActionState$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 4490
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4491
    return-object p0
.end method

.method public setActionState(Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4478
    if-nez p1, :cond_8

    .line 4479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4481
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 4483
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4484
    return-object p0
.end method

.method public setComment(ILcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4280
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4281
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4283
    return-object p0
.end method

.method public setComment(ILcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4270
    if-nez p2, :cond_8

    .line 4271
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4273
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureCommentIsMutable()V

    .line 4274
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4276
    return-object p0
.end method

.method public setLikingUserId(IJ)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4401
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureLikingUserIdIsMutable()V

    .line 4402
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4404
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4357
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4359
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4360
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4347
    if-nez p1, :cond_8

    .line 4348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4350
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 4352
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4353
    return-object p0
.end method

.method public setMedia(ILcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4191
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4192
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4194
    return-object p0
.end method

.method public setMedia(ILcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4181
    if-nez p2, :cond_8

    .line 4182
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4184
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->ensureMediaIsMutable()V

    .line 4185
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4187
    return-object p0
.end method

.method public setReshareData(Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4445
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4447
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4448
    return-object p0
.end method

.method public setReshareData(Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4435
    if-nez p1, :cond_8

    .line 4436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4438
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 4440
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->bitField0_:I

    .line 4441
    return-object p0
.end method
