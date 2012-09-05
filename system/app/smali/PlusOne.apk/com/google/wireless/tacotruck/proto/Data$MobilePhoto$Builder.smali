.class public final Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
        "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Lcom/google/protobuf/LazyStringList;

.field private album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

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

.field private description_:Ljava/lang/Object;

.field private entityVersion_:J

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private height_:I

.field private id_:J

.field private isDeleted_:Z

.field private likeCount_:I

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

.field private mediaTag_:J

.field private ownerGaiaId_:J

.field private photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

.field private plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private shape_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobileShape;",
            ">;"
        }
    .end annotation
.end field

.field private size_:J

.field private streamId_:Lcom/google/protobuf/LazyStringList;

.field private timestampMsec_:J

.field private title_:Ljava/lang/Object;

.field private totalCommentCount_:I

.field private uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

.field private urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

.field private url_:Ljava/lang/Object;

.field private videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

.field private width_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16618
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    .line 17210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    .line 17246
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    .line 17282
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 17325
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    .line 17435
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    .line 17545
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17602
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    .line 17647
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 17732
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 17775
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 17894
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 17950
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 18014
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 18059
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->ORIGINAL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 16619
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->maybeForceBuilderInitialization()V

    .line 16620
    return-void
.end method

.method static synthetic access$21300()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 1

    .prologue
    .line 16613
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 1

    .prologue
    .line 16625
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActivityIdIsMutable()V
    .registers 4

    .prologue
    const/high16 v2, 0x1

    .line 17777
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_15

    .line 17778
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 17779
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17781
    :cond_15
    return-void
.end method

.method private ensureCommentIsMutable()V
    .registers 3

    .prologue
    .line 17328
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 17329
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    .line 17330
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17332
    :cond_17
    return-void
.end method

.method private ensureLikingUserIdIsMutable()V
    .registers 3

    .prologue
    .line 17604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_17

    .line 17605
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    .line 17606
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17608
    :cond_17
    return-void
.end method

.method private ensureShapeIsMutable()V
    .registers 3

    .prologue
    .line 17438
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 17439
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    .line 17440
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17442
    :cond_17
    return-void
.end method

.method private ensureStreamIdIsMutable()V
    .registers 4

    .prologue
    const/high16 v2, 0x10

    .line 17896
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_15

    .line 17897
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 17898
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17900
    :cond_15
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 16623
    return-void
.end method


# virtual methods
.method public addActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17803
    if-nez p1, :cond_8

    .line 17804
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17806
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureActivityIdIsMutable()V

    .line 17807
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 17809
    return-object p0
.end method

.method public addAllActivityId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;"
        }
    .end annotation

    .prologue
    .line 17813
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureActivityIdIsMutable()V

    .line 17814
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17816
    return-object p0
.end method

.method public addAllComment(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;"
        }
    .end annotation

    .prologue
    .line 17395
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Comment;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 17396
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17398
    return-object p0
.end method

.method public addAllLikingUserId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17634
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureLikingUserIdIsMutable()V

    .line 17635
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17637
    return-object p0
.end method

.method public addAllShape(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobileShape;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;"
        }
    .end annotation

    .prologue
    .line 17505
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobileShape;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 17506
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17508
    return-object p0
.end method

.method public addAllStreamId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;"
        }
    .end annotation

    .prologue
    .line 17932
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureStreamIdIsMutable()V

    .line 17933
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17935
    return-object p0
.end method

.method public addComment(ILcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 17388
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 17389
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17391
    return-object p0
.end method

.method public addComment(ILcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17371
    if-nez p2, :cond_8

    .line 17372
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17374
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 17375
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17377
    return-object p0
.end method

.method public addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 17381
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 17382
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17384
    return-object p0
.end method

.method public addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17361
    if-nez p1, :cond_8

    .line 17362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17364
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 17365
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17367
    return-object p0
.end method

.method public addLikingUserId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17627
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureLikingUserIdIsMutable()V

    .line 17628
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17630
    return-object p0
.end method

.method public addShape(ILcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 17498
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 17499
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17501
    return-object p0
.end method

.method public addShape(ILcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17481
    if-nez p2, :cond_8

    .line 17482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17484
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 17485
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17487
    return-object p0
.end method

.method public addShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 17491
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 17492
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17494
    return-object p0
.end method

.method public addShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17471
    if-nez p1, :cond_8

    .line 17472
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17474
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 17475
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17477
    return-object p0
.end method

.method public addStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17922
    if-nez p1, :cond_8

    .line 17923
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17925
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureStreamIdIsMutable()V

    .line 17926
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 17928
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3

    .prologue
    .line 16694
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    .line 16695
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16696
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 16698
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 11

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 16712
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 16713
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16714
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 16715
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 16716
    or-int/lit8 v2, v2, 0x1

    .line 16718
    :cond_1b
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$21502(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16719
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 16720
    or-int/lit8 v2, v2, 0x2

    .line 16722
    :cond_27
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->id_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$21602(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J

    .line 16723
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_33

    .line 16724
    or-int/lit8 v2, v2, 0x4

    .line 16726
    :cond_33
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$21702(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16727
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_40

    .line 16728
    or-int/lit8 v2, v2, 0x8

    .line 16730
    :cond_40
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$21802(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16731
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4d

    .line 16732
    or-int/lit8 v2, v2, 0x10

    .line 16734
    :cond_4d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$21902(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 16735
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_68

    .line 16736
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    .line 16737
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16739
    :cond_68
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22002(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/List;)Ljava/util/List;

    .line 16740
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_75

    .line 16741
    or-int/lit8 v2, v2, 0x20

    .line 16743
    :cond_75
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->totalCommentCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->totalCommentCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22102(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I

    .line 16744
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_90

    .line 16745
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    .line 16746
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16748
    :cond_90
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22202(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/List;)Ljava/util/List;

    .line 16749
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9d

    .line 16750
    or-int/lit8 v2, v2, 0x40

    .line 16752
    :cond_9d
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22302(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J

    .line 16753
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_aa

    .line 16754
    or-int/lit16 v2, v2, 0x80

    .line 16756
    :cond_aa
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22402(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16757
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_b7

    .line 16758
    or-int/lit16 v2, v2, 0x100

    .line 16760
    :cond_b7
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likeCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likeCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22502(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I

    .line 16761
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_d2

    .line 16762
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    .line 16763
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x801

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16765
    :cond_d2
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22602(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/List;)Ljava/util/List;

    .line 16766
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_df

    .line 16767
    or-int/lit16 v2, v2, 0x200

    .line 16769
    :cond_df
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22702(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 16770
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_ec

    .line 16771
    or-int/lit16 v2, v2, 0x400

    .line 16773
    :cond_ec
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->width_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->width_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22802(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I

    .line 16774
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_f9

    .line 16775
    or-int/lit16 v2, v2, 0x800

    .line 16777
    :cond_f9
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->height_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->height_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22902(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I

    .line 16778
    and-int v3, v0, v5

    if-ne v3, v5, :cond_104

    .line 16779
    or-int/lit16 v2, v2, 0x1000

    .line 16781
    :cond_104
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23002(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16782
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_11f

    .line 16783
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 16785
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v4, -0x10001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16787
    :cond_11f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23102(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 16788
    and-int v3, v0, v7

    if-ne v3, v7, :cond_12a

    .line 16789
    or-int/lit16 v2, v2, 0x2000

    .line 16791
    :cond_12a
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->timestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->timestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23202(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J

    .line 16792
    and-int v3, v0, v8

    if-ne v3, v8, :cond_135

    .line 16793
    or-int/lit16 v2, v2, 0x4000

    .line 16795
    :cond_135
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->size_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->size_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23302(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J

    .line 16796
    and-int v3, v0, v9

    if-ne v3, v9, :cond_13f

    .line 16797
    or-int/2addr v2, v5

    .line 16799
    :cond_13f
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->entityVersion_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->entityVersion_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23402(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J

    .line 16800
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_15e

    .line 16801
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 16803
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16805
    :cond_15e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23502(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 16806
    const/high16 v3, 0x20

    and-int/2addr v3, v0

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_16b

    .line 16807
    or-int/2addr v2, v6

    .line 16809
    :cond_16b
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23602(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 16810
    const/high16 v3, 0x40

    and-int/2addr v3, v0

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_178

    .line 16811
    or-int/2addr v2, v7

    .line 16813
    :cond_178
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mediaTag_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->mediaTag_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23702(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J

    .line 16814
    const/high16 v3, 0x80

    and-int/2addr v3, v0

    const/high16 v4, 0x80

    if-ne v3, v4, :cond_185

    .line 16815
    or-int/2addr v2, v8

    .line 16817
    :cond_185
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23802(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 16818
    const/high16 v3, 0x100

    and-int/2addr v3, v0

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_192

    .line 16819
    or-int/2addr v2, v9

    .line 16821
    :cond_192
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDeleted_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDeleted_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23902(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Z)Z

    .line 16822
    const/high16 v3, 0x200

    and-int/2addr v3, v0

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_1a1

    .line 16823
    const/high16 v3, 0x10

    or-int/2addr v2, v3

    .line 16825
    :cond_1a1
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24002(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 16826
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24102(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I

    .line 16827
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 16629
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    .line 16631
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16632
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->id_:J

    .line 16633
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16634
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    .line 16635
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16636
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    .line 16637
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16638
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 16639
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16640
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    .line 16641
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16642
    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->totalCommentCount_:I

    .line 16643
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16644
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    .line 16645
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16646
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ownerGaiaId_:J

    .line 16647
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16649
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16650
    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likeCount_:I

    .line 16651
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16652
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    .line 16653
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16654
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 16655
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16656
    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->width_:I

    .line 16657
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16658
    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->height_:I

    .line 16659
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16660
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16661
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16662
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 16663
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16664
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->timestampMsec_:J

    .line 16665
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16666
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->size_:J

    .line 16667
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16668
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->entityVersion_:J

    .line 16669
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16670
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 16671
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16672
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 16673
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16674
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mediaTag_:J

    .line 16675
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16676
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 16677
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16678
    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDeleted_:Z

    .line 16679
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16680
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->ORIGINAL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 16681
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16682
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 17819
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 17820
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17822
    return-object p0
.end method

.method public clearAlbum()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 17768
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 17770
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17771
    return-object p0
.end method

.method public clearComment()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17401
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    .line 17402
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17404
    return-object p0
.end method

.method public clearDescription()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17270
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17271
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    .line 17273
    return-object p0
.end method

.method public clearEntityVersion()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 17887
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17888
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->entityVersion_:J

    .line 17890
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17569
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17570
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17572
    return-object p0
.end method

.method public clearHeight()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17725
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17726
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->height_:I

    .line 17728
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 17203
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17204
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->id_:J

    .line 17206
    return-object p0
.end method

.method public clearIsDeleted()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 18052
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18053
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDeleted_:Z

    .line 18055
    return-object p0
.end method

.method public clearLikeCount()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17595
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17596
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likeCount_:I

    .line 17598
    return-object p0
.end method

.method public clearLikingUserId()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17640
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    .line 17641
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17643
    return-object p0
.end method

.method public clearMediaTag()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 18007
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18008
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mediaTag_:J

    .line 18010
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 17538
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17539
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ownerGaiaId_:J

    .line 17541
    return-object p0
.end method

.method public clearPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17318
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 17320
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17321
    return-object p0
.end method

.method public clearPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17683
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 17685
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17686
    return-object p0
.end method

.method public clearShape()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17511
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    .line 17512
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17514
    return-object p0
.end method

.method public clearSize()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 17866
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17867
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->size_:J

    .line 17869
    return-object p0
.end method

.method public clearStreamId()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 17938
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 17939
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17941
    return-object p0
.end method

.method public clearTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 17845
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17846
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->timestampMsec_:J

    .line 17848
    return-object p0
.end method

.method public clearTitle()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17234
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17235
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    .line 17237
    return-object p0
.end method

.method public clearTotalCommentCount()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17428
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17429
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->totalCommentCount_:I

    .line 17431
    return-object p0
.end method

.method public clearUploadStatus()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 18076
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18077
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->ORIGINAL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 18079
    return-object p0
.end method

.method public clearUrl()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17177
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17178
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    .line 17180
    return-object p0
.end method

.method public clearUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 18031
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18032
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 18034
    return-object p0
.end method

.method public clearVideoData()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 17986
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 17988
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17989
    return-object p0
.end method

.method public clearWidth()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17704
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17705
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->width_:I

    .line 17707
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 16613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 16686
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

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
    .line 16613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 17790
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActivityIdCount()I
    .registers 2

    .prologue
    .line 17787
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getActivityIdList()Ljava/util/List;
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
    .line 17784
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 17737
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public getComment(I)Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 3
    .parameter "index"

    .prologue
    .line 17341
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public getCommentCount()I
    .registers 2

    .prologue
    .line 17338
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

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
    .line 17335
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 16613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16613
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 16690
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17251
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    .line 17252
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17253
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17254
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    .line 17257
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

.method public getEntityVersion()J
    .registers 3

    .prologue
    .line 17878
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->entityVersion_:J

    return-wide v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17550
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17551
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17552
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17553
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17556
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

.method public getHeight()I
    .registers 2

    .prologue
    .line 17716
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->height_:I

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 17194
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->id_:J

    return-wide v0
.end method

.method public getIsDeleted()Z
    .registers 2

    .prologue
    .line 18043
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDeleted_:Z

    return v0
.end method

.method public getLikeCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17586
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likeCount_:I

    return v0
.end method

.method public getLikingUserId(I)J
    .registers 4
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17617
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLikingUserIdCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17614
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17611
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaTag()J
    .registers 3

    .prologue
    .line 17998
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mediaTag_:J

    return-wide v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 17529
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2

    .prologue
    .line 17287
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 17652
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getShape(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 3
    .parameter "index"

    .prologue
    .line 17451
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    return-object v0
.end method

.method public getShapeCount()I
    .registers 2

    .prologue
    .line 17448
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getShapeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobileShape;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17445
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 17857
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->size_:J

    return-wide v0
.end method

.method public getStreamId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 17909
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStreamIdCount()I
    .registers 2

    .prologue
    .line 17906
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getStreamIdList()Ljava/util/List;
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
    .line 17903
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampMsec()J
    .registers 3

    .prologue
    .line 17836
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->timestampMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17215
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    .line 17216
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17217
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17218
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    .line 17221
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

.method public getTotalCommentCount()I
    .registers 2

    .prologue
    .line 17419
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->totalCommentCount_:I

    return v0
.end method

.method public getUploadStatus()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    .registers 2

    .prologue
    .line 18064
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17158
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    .line 17159
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17160
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17161
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    .line 17164
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

.method public getUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 2

    .prologue
    .line 18019
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object v0
.end method

.method public getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2

    .prologue
    .line 17955
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 17695
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->width_:I

    return v0
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 17734
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 17248
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

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

.method public hasEntityVersion()Z
    .registers 3

    .prologue
    const/high16 v1, 0x8

    .line 17875
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 17547
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

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

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 17713
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 17191
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

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

.method public hasIsDeleted()Z
    .registers 3

    .prologue
    const/high16 v1, 0x100

    .line 18040
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17583
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

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

.method public hasMediaTag()Z
    .registers 3

    .prologue
    const/high16 v1, 0x40

    .line 17995
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 17526
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

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

.method public hasPhotoActionState()Z
    .registers 3

    .prologue
    .line 17284
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

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

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    .line 17649
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSize()Z
    .registers 3

    .prologue
    const/high16 v1, 0x4

    .line 17854
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTimestampMsec()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 17833
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 17212
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

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

.method public hasTotalCommentCount()Z
    .registers 3

    .prologue
    .line 17416
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

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

.method public hasUploadStatus()Z
    .registers 3

    .prologue
    const/high16 v1, 0x200

    .line 18061
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 17155
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrlFormat()Z
    .registers 3

    .prologue
    const/high16 v1, 0x80

    .line 18016
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasVideoData()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 17952
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasWidth()Z
    .registers 3

    .prologue
    .line 17692
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public mergeAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 17756
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 17758
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 17764
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17765
    return-object p0

    .line 17761
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

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
    .line 16613
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

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
    .line 16613
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 12
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16969
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 16970
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_1e6

    .line 16975
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 16977
    :sswitch_d
    return-object p0

    .line 16982
    :sswitch_e
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16983
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 16987
    :sswitch_1b
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16988
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->id_:J

    goto :goto_0

    .line 16992
    :sswitch_28
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16993
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 16997
    :sswitch_35
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16998
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 17002
    :sswitch_42
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v3

    .line 17003
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->hasPhotoActionState()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 17004
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    .line 17006
    :cond_53
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17007
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto :goto_0

    .line 17011
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    :sswitch_5e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v3

    .line 17012
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17013
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto :goto_0

    .line 17017
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    :sswitch_6d
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17018
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->totalCommentCount_:I

    goto :goto_0

    .line 17022
    :sswitch_7a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v3

    .line 17023
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17024
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->addShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto/16 :goto_0

    .line 17028
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    :sswitch_8a
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17029
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ownerGaiaId_:J

    goto/16 :goto_0

    .line 17033
    :sswitch_98
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17034
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likeCount_:I

    goto/16 :goto_0

    .line 17038
    :sswitch_a6
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureLikingUserIdIsMutable()V

    .line 17039
    iget-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17043
    :sswitch_b8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 17044
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 17045
    .local v1, limit:I
    :goto_c0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_ce

    .line 17046
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->addLikingUserId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto :goto_c0

    .line 17048
    :cond_ce
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 17052
    .end local v0           #length:I
    .end local v1           #limit:I
    :sswitch_d3
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v3

    .line 17053
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->hasPlusoneData()Z

    move-result v6

    if-eqz v6, :cond_e4

    .line 17054
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 17056
    :cond_e4
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17057
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto/16 :goto_0

    .line 17061
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :sswitch_f0
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17062
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->width_:I

    goto/16 :goto_0

    .line 17066
    :sswitch_fe
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17067
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->height_:I

    goto/16 :goto_0

    .line 17071
    :sswitch_10c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v3

    .line 17072
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->hasAlbum()Z

    move-result v6

    if-eqz v6, :cond_11d

    .line 17073
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 17075
    :cond_11d
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17076
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto/16 :goto_0

    .line 17080
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    :sswitch_129
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureActivityIdIsMutable()V

    .line 17081
    iget-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 17085
    :sswitch_137
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x2

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17086
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->timestampMsec_:J

    goto/16 :goto_0

    .line 17090
    :sswitch_146
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17091
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->size_:J

    goto/16 :goto_0

    .line 17095
    :sswitch_155
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17096
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->entityVersion_:J

    goto/16 :goto_0

    .line 17100
    :sswitch_164
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureStreamIdIsMutable()V

    .line 17101
    iget-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 17105
    :sswitch_172
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v3

    .line 17106
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->hasVideoData()Z

    move-result v6

    if-eqz v6, :cond_183

    .line 17107
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    .line 17109
    :cond_183
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17110
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setVideoData(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto/16 :goto_0

    .line 17114
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    :sswitch_18f
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x40

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17115
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mediaTag_:J

    goto/16 :goto_0

    .line 17119
    :sswitch_19e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 17120
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    move-result-object v5

    .line 17121
    .local v5, value:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    if-eqz v5, :cond_0

    .line 17122
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17123
    iput-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    goto/16 :goto_0

    .line 17128
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    :sswitch_1b3
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x100

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17129
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDeleted_:Z

    goto/16 :goto_0

    .line 17133
    :sswitch_1c2
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17134
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17138
    :sswitch_1d0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 17139
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    move-result-object v5

    .line 17140
    .local v5, value:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    if-eqz v5, :cond_0

    .line 17141
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x200

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17142
    iput-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    goto/16 :goto_0

    .line 16970
    nop

    :sswitch_data_1e6
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_5e
        0x38 -> :sswitch_6d
        0x42 -> :sswitch_7a
        0x48 -> :sswitch_8a
        0x50 -> :sswitch_98
        0x58 -> :sswitch_a6
        0x5a -> :sswitch_b8
        0x62 -> :sswitch_d3
        0x68 -> :sswitch_f0
        0x70 -> :sswitch_fe
        0x7a -> :sswitch_10c
        0x82 -> :sswitch_129
        0x88 -> :sswitch_137
        0x90 -> :sswitch_146
        0x98 -> :sswitch_155
        0xa2 -> :sswitch_164
        0xaa -> :sswitch_172
        0xb0 -> :sswitch_18f
        0xb8 -> :sswitch_19e
        0xc0 -> :sswitch_1b3
        0xca -> :sswitch_1c2
        0xd0 -> :sswitch_1d0
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 16831
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 16945
    :cond_6
    :goto_6
    return-object p0

    .line 16832
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 16833
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16835
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 16836
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16838
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 16839
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16841
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 16842
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16844
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasPhotoActionState()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 16845
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergePhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16847
    :cond_48
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22000(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 16848
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 16849
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22000(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    .line 16850
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16857
    :cond_66
    :goto_66
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTotalCommentCount()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 16858
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTotalCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setTotalCommentCount(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16860
    :cond_73
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22200(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    .line 16861
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 16862
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22200(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    .line 16863
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16870
    :cond_91
    :goto_91
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 16871
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16873
    :cond_9e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 16874
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16876
    :cond_ab
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasLikeCount()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 16877
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getLikeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setLikeCount(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16879
    :cond_b8
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22600(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 16880
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 16881
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22600(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    .line 16882
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16889
    :cond_d6
    :goto_d6
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 16890
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16892
    :cond_e3
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 16893
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setWidth(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16895
    :cond_f0
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 16896
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setHeight(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16898
    :cond_fd
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 16899
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16901
    :cond_10a
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23100(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12a

    .line 16902
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 16903
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23100(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 16904
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16911
    :cond_12a
    :goto_12a
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_137

    .line 16912
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16914
    :cond_137
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 16915
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setSize(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16917
    :cond_144
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasEntityVersion()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 16918
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getEntityVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16920
    :cond_151
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23500(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_171

    .line 16921
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 16922
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23500(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 16923
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 16930
    :cond_171
    :goto_171
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasVideoData()Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 16931
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeVideoData(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16933
    :cond_17e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasMediaTag()Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 16934
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getMediaTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setMediaTag(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16936
    :cond_18b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasUrlFormat()Z

    move-result v0

    if-eqz v0, :cond_198

    .line 16937
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setUrlFormat(Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16939
    :cond_198
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasIsDeleted()Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 16940
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getIsDeleted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setIsDeleted(Z)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 16942
    :cond_1a5
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasUploadStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16943
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUploadStatus()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setUploadStatus(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto/16 :goto_6

    .line 16852
    :cond_1b4
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 16853
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22000(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_66

    .line 16865
    :cond_1c2
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 16866
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22200(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_91

    .line 16884
    :cond_1d0
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureLikingUserIdIsMutable()V

    .line 16885
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$22600(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_d6

    .line 16906
    :cond_1de
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureActivityIdIsMutable()V

    .line 16907
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23100(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_12a

    .line 16925
    :cond_1ec
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureStreamIdIsMutable()V

    .line 16926
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23500(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_171
.end method

.method public mergePhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17306
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 17308
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 17314
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17315
    return-object p0

    .line 17311
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    goto :goto_20
.end method

.method public mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17671
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 17673
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 17679
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17680
    return-object p0

    .line 17676
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    goto :goto_20
.end method

.method public mergeVideoData(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x20

    .line 17974
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 17976
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 17982
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17983
    return-object p0

    .line 17979
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    goto :goto_1f
.end method

.method public setActivityId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17794
    if-nez p2, :cond_8

    .line 17795
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17797
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureActivityIdIsMutable()V

    .line 17798
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17800
    return-object p0
.end method

.method public setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 17750
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 17752
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17753
    return-object p0
.end method

.method public setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17740
    if-nez p1, :cond_8

    .line 17741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17743
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 17745
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17746
    return-object p0
.end method

.method public setComment(ILcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 17355
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 17356
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17358
    return-object p0
.end method

.method public setComment(ILcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17345
    if-nez p2, :cond_8

    .line 17346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17348
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 17349
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17351
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17261
    if-nez p1, :cond_8

    .line 17262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17264
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17265
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    .line 17267
    return-object p0
.end method

.method public setEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 17881
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17882
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->entityVersion_:J

    .line 17884
    return-object p0
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17560
    if-nez p1, :cond_8

    .line 17561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17563
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17564
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17566
    return-object p0
.end method

.method public setHeight(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17719
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17720
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->height_:I

    .line 17722
    return-object p0
.end method

.method public setId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17197
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17198
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->id_:J

    .line 17200
    return-object p0
.end method

.method public setIsDeleted(Z)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18046
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18047
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDeleted_:Z

    .line 18049
    return-object p0
.end method

.method public setLikeCount(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17589
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17590
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likeCount_:I

    .line 17592
    return-object p0
.end method

.method public setLikingUserId(IJ)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 6
    .parameter "index"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17621
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureLikingUserIdIsMutable()V

    .line 17622
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17624
    return-object p0
.end method

.method public setMediaTag(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 18001
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18002
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mediaTag_:J

    .line 18004
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17532
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17533
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ownerGaiaId_:J

    .line 17535
    return-object p0
.end method

.method public setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 17300
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 17302
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17303
    return-object p0
.end method

.method public setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17290
    if-nez p1, :cond_8

    .line 17291
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17293
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 17295
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17296
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 17665
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 17667
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17668
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17655
    if-nez p1, :cond_8

    .line 17656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17658
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 17660
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17661
    return-object p0
.end method

.method public setShape(ILcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 17465
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 17466
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17468
    return-object p0
.end method

.method public setShape(ILcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17455
    if-nez p2, :cond_8

    .line 17456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17458
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 17459
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17461
    return-object p0
.end method

.method public setSize(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 17860
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17861
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->size_:J

    .line 17863
    return-object p0
.end method

.method public setStreamId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 17913
    if-nez p2, :cond_8

    .line 17914
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17916
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureStreamIdIsMutable()V

    .line 17917
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17919
    return-object p0
.end method

.method public setTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 17839
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17840
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->timestampMsec_:J

    .line 17842
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17225
    if-nez p1, :cond_8

    .line 17226
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17228
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17229
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    .line 17231
    return-object p0
.end method

.method public setTotalCommentCount(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17422
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17423
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->totalCommentCount_:I

    .line 17425
    return-object p0
.end method

.method public setUploadStatus(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18067
    if-nez p1, :cond_8

    .line 18068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18070
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18071
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 18073
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17168
    if-nez p1, :cond_8

    .line 17169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17171
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17172
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    .line 17174
    return-object p0
.end method

.method public setUrlFormat(Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18022
    if-nez p1, :cond_8

    .line 18023
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18025
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18026
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 18028
    return-object p0
.end method

.method public setVideoData(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 17968
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 17970
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17971
    return-object p0
.end method

.method public setVideoData(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17958
    if-nez p1, :cond_8

    .line 17959
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17961
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 17963
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17964
    return-object p0
.end method

.method public setWidth(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17698
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17699
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->width_:I

    .line 17701
    return-object p0
.end method
