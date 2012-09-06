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

.field private isDownloadable_:Z

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
    .line 17938
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18487
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    .line 18544
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    .line 18580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    .line 18616
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 18659
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    .line 18769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    .line 18879
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 18936
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    .line 18981
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 19066
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 19109
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 19228
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 19284
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 19348
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 19393
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->ORIGINAL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 17939
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->maybeForceBuilderInitialization()V

    .line 17940
    return-void
.end method

.method static synthetic access$22900()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 1

    .prologue
    .line 17933
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 1

    .prologue
    .line 17945
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActivityIdIsMutable()V
    .registers 4

    .prologue
    const/high16 v2, 0x1

    .line 19111
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_15

    .line 19112
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 19113
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19115
    :cond_15
    return-void
.end method

.method private ensureCommentIsMutable()V
    .registers 3

    .prologue
    .line 18662
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 18663
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    .line 18664
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18666
    :cond_17
    return-void
.end method

.method private ensureLikingUserIdIsMutable()V
    .registers 3

    .prologue
    .line 18938
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_17

    .line 18939
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    .line 18940
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18942
    :cond_17
    return-void
.end method

.method private ensureShapeIsMutable()V
    .registers 3

    .prologue
    .line 18772
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 18773
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    .line 18774
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18776
    :cond_17
    return-void
.end method

.method private ensureStreamIdIsMutable()V
    .registers 4

    .prologue
    const/high16 v2, 0x10

    .line 19230
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_15

    .line 19231
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 19232
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19234
    :cond_15
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 17943
    return-void
.end method


# virtual methods
.method public addActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19137
    if-nez p1, :cond_8

    .line 19138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19140
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureActivityIdIsMutable()V

    .line 19141
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 19143
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
    .line 19147
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureActivityIdIsMutable()V

    .line 19148
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 19150
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
    .line 18729
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Comment;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 18730
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18732
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
    .line 18968
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureLikingUserIdIsMutable()V

    .line 18969
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18971
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
    .line 18839
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobileShape;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 18840
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18842
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
    .line 19266
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureStreamIdIsMutable()V

    .line 19267
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 19269
    return-object p0
.end method

.method public addComment(ILcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 18722
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 18723
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18725
    return-object p0
.end method

.method public addComment(ILcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18705
    if-nez p2, :cond_8

    .line 18706
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18708
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 18709
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18711
    return-object p0
.end method

.method public addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 18715
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 18716
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18718
    return-object p0
.end method

.method public addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18695
    if-nez p1, :cond_8

    .line 18696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18698
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 18699
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18701
    return-object p0
.end method

.method public addLikingUserId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18961
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureLikingUserIdIsMutable()V

    .line 18962
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18964
    return-object p0
.end method

.method public addShape(ILcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 18832
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 18833
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18835
    return-object p0
.end method

.method public addShape(ILcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18815
    if-nez p2, :cond_8

    .line 18816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18818
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 18819
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18821
    return-object p0
.end method

.method public addShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 18825
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 18826
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18828
    return-object p0
.end method

.method public addShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18805
    if-nez p1, :cond_8

    .line 18806
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18808
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 18809
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18811
    return-object p0
.end method

.method public addStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19256
    if-nez p1, :cond_8

    .line 19257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19259
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureStreamIdIsMutable()V

    .line 19260
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 19262
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17933
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3

    .prologue
    .line 18016
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    .line 18017
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 18018
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 18020
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17933
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

    .line 18034
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 18035
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18036
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 18037
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 18038
    or-int/lit8 v2, v2, 0x1

    .line 18040
    :cond_1b
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23102(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18041
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 18042
    or-int/lit8 v2, v2, 0x2

    .line 18044
    :cond_27
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->id_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23202(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J

    .line 18045
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_33

    .line 18046
    or-int/lit8 v2, v2, 0x4

    .line 18048
    :cond_33
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23302(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18049
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_40

    .line 18050
    or-int/lit8 v2, v2, 0x8

    .line 18052
    :cond_40
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23402(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18053
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4d

    .line 18054
    or-int/lit8 v2, v2, 0x10

    .line 18056
    :cond_4d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23502(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 18057
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_68

    .line 18058
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    .line 18059
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18061
    :cond_68
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23602(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/List;)Ljava/util/List;

    .line 18062
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_75

    .line 18063
    or-int/lit8 v2, v2, 0x20

    .line 18065
    :cond_75
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->totalCommentCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->totalCommentCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23702(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I

    .line 18066
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_90

    .line 18067
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    .line 18068
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18070
    :cond_90
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23802(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/List;)Ljava/util/List;

    .line 18071
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9d

    .line 18072
    or-int/lit8 v2, v2, 0x40

    .line 18074
    :cond_9d
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23902(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J

    .line 18075
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_aa

    .line 18076
    or-int/lit16 v2, v2, 0x80

    .line 18078
    :cond_aa
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24002(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18079
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_b7

    .line 18080
    or-int/lit16 v2, v2, 0x100

    .line 18082
    :cond_b7
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likeCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likeCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24102(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I

    .line 18083
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_d2

    .line 18084
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    .line 18085
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x801

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18087
    :cond_d2
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24202(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/List;)Ljava/util/List;

    .line 18088
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_df

    .line 18089
    or-int/lit16 v2, v2, 0x200

    .line 18091
    :cond_df
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24302(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 18092
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_ec

    .line 18093
    or-int/lit16 v2, v2, 0x400

    .line 18095
    :cond_ec
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->width_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->width_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24402(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I

    .line 18096
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_f9

    .line 18097
    or-int/lit16 v2, v2, 0x800

    .line 18099
    :cond_f9
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->height_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->height_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24502(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I

    .line 18100
    and-int v3, v0, v5

    if-ne v3, v5, :cond_104

    .line 18101
    or-int/lit16 v2, v2, 0x1000

    .line 18103
    :cond_104
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24602(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 18104
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_11f

    .line 18105
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 18107
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v4, -0x10001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18109
    :cond_11f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24702(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 18110
    and-int v3, v0, v7

    if-ne v3, v7, :cond_12a

    .line 18111
    or-int/lit16 v2, v2, 0x2000

    .line 18113
    :cond_12a
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->timestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->timestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24802(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J

    .line 18114
    and-int v3, v0, v8

    if-ne v3, v8, :cond_135

    .line 18115
    or-int/lit16 v2, v2, 0x4000

    .line 18117
    :cond_135
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->size_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->size_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24902(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J

    .line 18118
    and-int v3, v0, v9

    if-ne v3, v9, :cond_13f

    .line 18119
    or-int/2addr v2, v5

    .line 18121
    :cond_13f
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->entityVersion_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->entityVersion_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$25002(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J

    .line 18122
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_15e

    .line 18123
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 18125
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18127
    :cond_15e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$25102(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 18128
    const/high16 v3, 0x20

    and-int/2addr v3, v0

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_16b

    .line 18129
    or-int/2addr v2, v6

    .line 18131
    :cond_16b
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$25202(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 18132
    const/high16 v3, 0x40

    and-int/2addr v3, v0

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_178

    .line 18133
    or-int/2addr v2, v7

    .line 18135
    :cond_178
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mediaTag_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->mediaTag_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$25302(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J

    .line 18136
    const/high16 v3, 0x80

    and-int/2addr v3, v0

    const/high16 v4, 0x80

    if-ne v3, v4, :cond_185

    .line 18137
    or-int/2addr v2, v8

    .line 18139
    :cond_185
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$25402(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 18140
    const/high16 v3, 0x100

    and-int/2addr v3, v0

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_192

    .line 18141
    or-int/2addr v2, v9

    .line 18143
    :cond_192
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDeleted_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDeleted_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$25502(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Z)Z

    .line 18144
    const/high16 v3, 0x200

    and-int/2addr v3, v0

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_1a1

    .line 18145
    const/high16 v3, 0x10

    or-int/2addr v2, v3

    .line 18147
    :cond_1a1
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$25602(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 18148
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    const/high16 v4, 0x400

    if-ne v3, v4, :cond_1b0

    .line 18149
    const/high16 v3, 0x20

    or-int/2addr v2, v3

    .line 18151
    :cond_1b0
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDownloadable_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDownloadable_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$25702(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Z)Z

    .line 18152
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$25802(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I

    .line 18153
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17933
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17933
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 17949
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 17950
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    .line 17951
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17952
    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->id_:J

    .line 17953
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17954
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    .line 17955
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17956
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    .line 17957
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17958
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 17959
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17960
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    .line 17961
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17962
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->totalCommentCount_:I

    .line 17963
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    .line 17965
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17966
    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ownerGaiaId_:J

    .line 17967
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17968
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17969
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17970
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likeCount_:I

    .line 17971
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17972
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    .line 17973
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17974
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 17975
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17976
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->width_:I

    .line 17977
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17978
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->height_:I

    .line 17979
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17980
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 17981
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17982
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 17983
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17984
    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->timestampMsec_:J

    .line 17985
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17986
    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->size_:J

    .line 17987
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17988
    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->entityVersion_:J

    .line 17989
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17990
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 17991
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17992
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 17993
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17994
    iput-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mediaTag_:J

    .line 17995
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17996
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 17997
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 17998
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDeleted_:Z

    .line 17999
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18000
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->ORIGINAL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 18001
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18002
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDownloadable_:Z

    .line 18003
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18004
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 19153
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 19154
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19156
    return-object p0
.end method

.method public clearAlbum()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 19102
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 19104
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19105
    return-object p0
.end method

.method public clearComment()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 18735
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    .line 18736
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18738
    return-object p0
.end method

.method public clearDescription()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 18604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18605
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    .line 18607
    return-object p0
.end method

.method public clearEntityVersion()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 19221
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->entityVersion_:J

    .line 19224
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 18903
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18904
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 18906
    return-object p0
.end method

.method public clearHeight()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 19059
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19060
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->height_:I

    .line 19062
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 18537
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18538
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->id_:J

    .line 18540
    return-object p0
.end method

.method public clearIsDeleted()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 19386
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDeleted_:Z

    .line 19389
    return-object p0
.end method

.method public clearIsDownloadable()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 19431
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDownloadable_:Z

    .line 19434
    return-object p0
.end method

.method public clearLikeCount()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18929
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18930
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likeCount_:I

    .line 18932
    return-object p0
.end method

.method public clearLikingUserId()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18974
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    .line 18975
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18977
    return-object p0
.end method

.method public clearMediaTag()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 19341
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19342
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mediaTag_:J

    .line 19344
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 18872
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18873
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ownerGaiaId_:J

    .line 18875
    return-object p0
.end method

.method public clearPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 18652
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 18654
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18655
    return-object p0
.end method

.method public clearPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 19017
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 19019
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19020
    return-object p0
.end method

.method public clearShape()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 18845
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    .line 18846
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18848
    return-object p0
.end method

.method public clearSize()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 19200
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->size_:J

    .line 19203
    return-object p0
.end method

.method public clearStreamId()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 19272
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 19273
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19275
    return-object p0
.end method

.method public clearTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 19179
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->timestampMsec_:J

    .line 19182
    return-object p0
.end method

.method public clearTitle()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 18568
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18569
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    .line 18571
    return-object p0
.end method

.method public clearTotalCommentCount()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 18762
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18763
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->totalCommentCount_:I

    .line 18765
    return-object p0
.end method

.method public clearUploadStatus()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 19410
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19411
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->ORIGINAL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 19413
    return-object p0
.end method

.method public clearUrl()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 18511
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18512
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    .line 18514
    return-object p0
.end method

.method public clearUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 19365
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19366
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 19368
    return-object p0
.end method

.method public clearVideoData()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 19320
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 19322
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19323
    return-object p0
.end method

.method public clearWidth()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 19038
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19039
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->width_:I

    .line 19041
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 17933
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17933
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3

    .prologue
    .line 18008
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
    .line 17933
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 19124
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActivityIdCount()I
    .registers 2

    .prologue
    .line 19121
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
    .line 19118
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 19071
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public getComment(I)Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 3
    .parameter "index"

    .prologue
    .line 18675
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public getCommentCount()I
    .registers 2

    .prologue
    .line 18672
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
    .line 18669
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 17933
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17933
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 18012
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 18585
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    .line 18586
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 18587
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18588
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    .line 18591
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
    .line 19212
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->entityVersion_:J

    return-wide v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 18884
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 18885
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 18886
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18887
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 18890
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
    .line 19050
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->height_:I

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 18528
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->id_:J

    return-wide v0
.end method

.method public getIsDeleted()Z
    .registers 2

    .prologue
    .line 19377
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDeleted_:Z

    return v0
.end method

.method public getIsDownloadable()Z
    .registers 2

    .prologue
    .line 19422
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDownloadable_:Z

    return v0
.end method

.method public getLikeCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18920
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likeCount_:I

    return v0
.end method

.method public getLikingUserId(I)J
    .registers 4
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18951
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
    .line 18948
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
    .line 18945
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaTag()J
    .registers 3

    .prologue
    .line 19332
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mediaTag_:J

    return-wide v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 18863
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2

    .prologue
    .line 18621
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 18986
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getShape(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 3
    .parameter "index"

    .prologue
    .line 18785
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    return-object v0
.end method

.method public getShapeCount()I
    .registers 2

    .prologue
    .line 18782
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
    .line 18779
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 19191
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->size_:J

    return-wide v0
.end method

.method public getStreamId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 19243
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStreamIdCount()I
    .registers 2

    .prologue
    .line 19240
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
    .line 19237
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampMsec()J
    .registers 3

    .prologue
    .line 19170
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->timestampMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 18549
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    .line 18550
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 18551
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18552
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    .line 18555
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
    .line 18753
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->totalCommentCount_:I

    return v0
.end method

.method public getUploadStatus()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    .registers 2

    .prologue
    .line 19398
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 18492
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    .line 18493
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 18494
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18495
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    .line 18498
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
    .line 19353
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object v0
.end method

.method public getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2

    .prologue
    .line 19289
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 19029
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->width_:I

    return v0
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 19068
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
    .line 18582
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

    .line 19209
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
    .line 18881
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
    .line 19047
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
    .line 18525
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

    .line 19374
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

.method public hasIsDownloadable()Z
    .registers 3

    .prologue
    const/high16 v1, 0x400

    .line 19419
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
    .line 18917
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

    .line 19329
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
    .line 18860
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
    .line 18618
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
    .line 18983
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

    .line 19188
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

    .line 19167
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
    .line 18546
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
    .line 18750
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

    .line 19395
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

    .line 18489
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

    .line 19350
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

    .line 19286
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
    .line 19026
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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 18278
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getShapeCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 18279
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getShape(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 18290
    :cond_12
    :goto_12
    return v1

    .line 18278
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 18284
    :cond_16
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->hasAlbum()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 18285
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 18290
    :cond_26
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 19090
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 19092
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 19098
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19099
    return-object p0

    .line 19095
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
    .line 17933
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 17933
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

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
    .line 17933
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
    .line 18298
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 18299
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_1f4

    .line 18304
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 18306
    :sswitch_d
    return-object p0

    .line 18311
    :sswitch_e
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18312
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 18316
    :sswitch_1b
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18317
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->id_:J

    goto :goto_0

    .line 18321
    :sswitch_28
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18322
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 18326
    :sswitch_35
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18327
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 18331
    :sswitch_42
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v3

    .line 18332
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->hasPhotoActionState()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 18333
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    .line 18335
    :cond_53
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18336
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto :goto_0

    .line 18340
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    :sswitch_5e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;

    move-result-object v3

    .line 18341
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18342
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->addComment(Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto :goto_0

    .line 18346
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;
    :sswitch_6d
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18347
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->totalCommentCount_:I

    goto :goto_0

    .line 18351
    :sswitch_7a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v3

    .line 18352
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18353
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->addShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto/16 :goto_0

    .line 18357
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    :sswitch_8a
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18358
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ownerGaiaId_:J

    goto/16 :goto_0

    .line 18362
    :sswitch_98
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18363
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likeCount_:I

    goto/16 :goto_0

    .line 18367
    :sswitch_a6
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureLikingUserIdIsMutable()V

    .line 18368
    iget-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 18372
    :sswitch_b8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 18373
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 18374
    .local v1, limit:I
    :goto_c0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_ce

    .line 18375
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->addLikingUserId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto :goto_c0

    .line 18377
    :cond_ce
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 18381
    .end local v0           #length:I
    .end local v1           #limit:I
    :sswitch_d3
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v3

    .line 18382
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->hasPlusoneData()Z

    move-result v6

    if-eqz v6, :cond_e4

    .line 18383
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 18385
    :cond_e4
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18386
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto/16 :goto_0

    .line 18390
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :sswitch_f0
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18391
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->width_:I

    goto/16 :goto_0

    .line 18395
    :sswitch_fe
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18396
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->height_:I

    goto/16 :goto_0

    .line 18400
    :sswitch_10c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v3

    .line 18401
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->hasAlbum()Z

    move-result v6

    if-eqz v6, :cond_11d

    .line 18402
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 18404
    :cond_11d
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18405
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto/16 :goto_0

    .line 18409
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    :sswitch_129
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureActivityIdIsMutable()V

    .line 18410
    iget-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 18414
    :sswitch_137
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x2

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18415
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->timestampMsec_:J

    goto/16 :goto_0

    .line 18419
    :sswitch_146
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18420
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->size_:J

    goto/16 :goto_0

    .line 18424
    :sswitch_155
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18425
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->entityVersion_:J

    goto/16 :goto_0

    .line 18429
    :sswitch_164
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureStreamIdIsMutable()V

    .line 18430
    iget-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 18434
    :sswitch_172
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v3

    .line 18435
    .local v3, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->hasVideoData()Z

    move-result v6

    if-eqz v6, :cond_183

    .line 18436
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    .line 18438
    :cond_183
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18439
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setVideoData(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto/16 :goto_0

    .line 18443
    .end local v3           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;
    :sswitch_18f
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x40

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18444
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mediaTag_:J

    goto/16 :goto_0

    .line 18448
    :sswitch_19e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 18449
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    move-result-object v5

    .line 18450
    .local v5, value:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    if-eqz v5, :cond_0

    .line 18451
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18452
    iput-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    goto/16 :goto_0

    .line 18457
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    :sswitch_1b3
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x100

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18458
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDeleted_:Z

    goto/16 :goto_0

    .line 18462
    :sswitch_1c2
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18463
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 18467
    :sswitch_1d0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 18468
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    move-result-object v5

    .line 18469
    .local v5, value:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    if-eqz v5, :cond_0

    .line 18470
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x200

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18471
    iput-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    goto/16 :goto_0

    .line 18476
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    :sswitch_1e5
    iget v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v7, 0x400

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18477
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDownloadable_:Z

    goto/16 :goto_0

    .line 18299
    :sswitch_data_1f4
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
        0xd8 -> :sswitch_1e5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 18157
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 18274
    :cond_6
    :goto_6
    return-object p0

    .line 18158
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 18159
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18161
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 18162
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18164
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 18165
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18167
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 18168
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18170
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasPhotoActionState()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 18171
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergePhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18173
    :cond_48
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23600(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 18174
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 18175
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23600(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    .line 18176
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18183
    :cond_66
    :goto_66
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTotalCommentCount()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 18184
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTotalCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setTotalCommentCount(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18186
    :cond_73
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23800(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    .line 18187
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 18188
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23800(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    .line 18189
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18196
    :cond_91
    :goto_91
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 18197
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18199
    :cond_9e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 18200
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18202
    :cond_ab
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasLikeCount()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 18203
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getLikeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setLikeCount(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18205
    :cond_b8
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24200(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 18206
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 18207
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24200(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    .line 18208
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18215
    :cond_d6
    :goto_d6
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 18216
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18218
    :cond_e3
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 18219
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setWidth(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18221
    :cond_f0
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 18222
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setHeight(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18224
    :cond_fd
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 18225
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18227
    :cond_10a
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24700(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12a

    .line 18228
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 18229
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24700(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 18230
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18237
    :cond_12a
    :goto_12a
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_137

    .line 18238
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18240
    :cond_137
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 18241
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setSize(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18243
    :cond_144
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasEntityVersion()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 18244
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getEntityVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18246
    :cond_151
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$25100(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_171

    .line 18247
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 18248
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$25100(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 18249
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18256
    :cond_171
    :goto_171
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasVideoData()Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 18257
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeVideoData(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18259
    :cond_17e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasMediaTag()Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 18260
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getMediaTag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setMediaTag(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18262
    :cond_18b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasUrlFormat()Z

    move-result v0

    if-eqz v0, :cond_198

    .line 18263
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setUrlFormat(Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18265
    :cond_198
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasIsDeleted()Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 18266
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getIsDeleted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setIsDeleted(Z)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18268
    :cond_1a5
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasUploadStatus()Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 18269
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUploadStatus()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setUploadStatus(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 18271
    :cond_1b2
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasIsDownloadable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18272
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getIsDownloadable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->setIsDownloadable(Z)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    goto/16 :goto_6

    .line 18178
    :cond_1c1
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 18179
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23600(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_66

    .line 18191
    :cond_1cf
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 18192
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$23800(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_91

    .line 18210
    :cond_1dd
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureLikingUserIdIsMutable()V

    .line 18211
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24200(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_d6

    .line 18232
    :cond_1eb
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureActivityIdIsMutable()V

    .line 18233
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$24700(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_12a

    .line 18251
    :cond_1f9
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureStreamIdIsMutable()V

    .line 18252
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->access$25100(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_171
.end method

.method public mergePhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18640
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 18642
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 18648
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18649
    return-object p0

    .line 18645
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    goto :goto_20
.end method

.method public mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19005
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 19007
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 19013
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19014
    return-object p0

    .line 19010
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    goto :goto_20
.end method

.method public mergeVideoData(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x20

    .line 19308
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 19310
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 19316
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19317
    return-object p0

    .line 19313
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    goto :goto_1f
.end method

.method public setActivityId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 19128
    if-nez p2, :cond_8

    .line 19129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19131
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureActivityIdIsMutable()V

    .line 19132
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19134
    return-object p0
.end method

.method public setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 19084
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 19086
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19087
    return-object p0
.end method

.method public setAlbum(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19074
    if-nez p1, :cond_8

    .line 19075
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19077
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 19079
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19080
    return-object p0
.end method

.method public setComment(ILcom/google/wireless/tacotruck/proto/Data$Comment$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 18689
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 18690
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Comment$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18692
    return-object p0
.end method

.method public setComment(ILcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18679
    if-nez p2, :cond_8

    .line 18680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18682
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureCommentIsMutable()V

    .line 18683
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->comment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18685
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18595
    if-nez p1, :cond_8

    .line 18596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18598
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18599
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->description_:Ljava/lang/Object;

    .line 18601
    return-object p0
.end method

.method public setEntityVersion(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 19215
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19216
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->entityVersion_:J

    .line 19218
    return-object p0
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18894
    if-nez p1, :cond_8

    .line 18895
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18897
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18898
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 18900
    return-object p0
.end method

.method public setHeight(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19053
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19054
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->height_:I

    .line 19056
    return-object p0
.end method

.method public setId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18531
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18532
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->id_:J

    .line 18534
    return-object p0
.end method

.method public setIsDeleted(Z)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19380
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19381
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDeleted_:Z

    .line 19383
    return-object p0
.end method

.method public setIsDownloadable(Z)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19425
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19426
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->isDownloadable_:Z

    .line 19428
    return-object p0
.end method

.method public setLikeCount(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18923
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18924
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likeCount_:I

    .line 18926
    return-object p0
.end method

.method public setLikingUserId(IJ)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 6
    .parameter "index"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18955
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureLikingUserIdIsMutable()V

    .line 18956
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->likingUserId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18958
    return-object p0
.end method

.method public setMediaTag(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 19335
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19336
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mediaTag_:J

    .line 19338
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18866
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18867
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ownerGaiaId_:J

    .line 18869
    return-object p0
.end method

.method public setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 18634
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 18636
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18637
    return-object p0
.end method

.method public setPhotoActionState(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18624
    if-nez p1, :cond_8

    .line 18625
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18627
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 18629
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18630
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 18999
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 19001
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19002
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18989
    if-nez p1, :cond_8

    .line 18990
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18992
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 18994
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18995
    return-object p0
.end method

.method public setShape(ILcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 18799
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 18800
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18802
    return-object p0
.end method

.method public setShape(ILcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18789
    if-nez p2, :cond_8

    .line 18790
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18792
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureShapeIsMutable()V

    .line 18793
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->shape_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18795
    return-object p0
.end method

.method public setSize(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 19194
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19195
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->size_:J

    .line 19197
    return-object p0
.end method

.method public setStreamId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 19247
    if-nez p2, :cond_8

    .line 19248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19250
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->ensureStreamIdIsMutable()V

    .line 19251
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19253
    return-object p0
.end method

.method public setTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 19173
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19174
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->timestampMsec_:J

    .line 19176
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18559
    if-nez p1, :cond_8

    .line 18560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18562
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18563
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->title_:Ljava/lang/Object;

    .line 18565
    return-object p0
.end method

.method public setTotalCommentCount(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18756
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18757
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->totalCommentCount_:I

    .line 18759
    return-object p0
.end method

.method public setUploadStatus(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19401
    if-nez p1, :cond_8

    .line 19402
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19404
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19405
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 19407
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18502
    if-nez p1, :cond_8

    .line 18503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18505
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 18506
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->url_:Ljava/lang/Object;

    .line 18508
    return-object p0
.end method

.method public setUrlFormat(Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19356
    if-nez p1, :cond_8

    .line 19357
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19359
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19360
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 19362
    return-object p0
.end method

.method public setVideoData(Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 19302
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 19304
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19305
    return-object p0
.end method

.method public setVideoData(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 19292
    if-nez p1, :cond_8

    .line 19293
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19295
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 19297
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19298
    return-object p0
.end method

.method public setWidth(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19032
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->bitField0_:I

    .line 19033
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->width_:I

    .line 19035
    return-object p0
.end method
