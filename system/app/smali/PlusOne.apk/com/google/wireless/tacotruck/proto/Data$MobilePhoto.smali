.class public final Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobilePhoto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18086
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 18087
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->initFields()V

    .line 18088
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15831
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16299
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedIsInitialized:B

    .line 16403
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedSerializedSize:I

    .line 15832
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15833
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16299
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedIsInitialized:B

    .line 16403
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedSerializedSize:I

    .line 15833
    return-void
.end method

.method static synthetic access$21502(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21602(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->id_:J

    return-wide p1
.end method

.method static synthetic access$21702(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21802(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21902(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object p1
.end method

.method static synthetic access$22000(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15826
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$22002(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$22102(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->totalCommentCount_:I

    return p1
.end method

.method static synthetic access$22200(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15826
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$22202(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$22302(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$22402(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22502(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likeCount_:I

    return p1
.end method

.method static synthetic access$22600(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15826
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$22602(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$22702(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object p1
.end method

.method static synthetic access$22802(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->width_:I

    return p1
.end method

.method static synthetic access$22902(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->height_:I

    return p1
.end method

.method static synthetic access$23002(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object p1
.end method

.method static synthetic access$23100(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15826
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$23102(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$23202(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->timestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$23302(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->size_:J

    return-wide p1
.end method

.method static synthetic access$23402(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->entityVersion_:J

    return-wide p1
.end method

.method static synthetic access$23500(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15826
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$23502(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$23602(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    return-object p1
.end method

.method static synthetic access$23702(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->mediaTag_:J

    return-wide p1
.end method

.method static synthetic access$23802(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object p1
.end method

.method static synthetic access$23902(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDeleted_:Z

    return p1
.end method

.method static synthetic access$24002(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    return-object p1
.end method

.method static synthetic access$24102(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15826
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 1

    .prologue
    .line 15837
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15984
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;

    .line 15985
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15986
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15988
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;

    .line 15991
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 16088
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16089
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 16090
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16092
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16095
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15952
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;

    .line 15953
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15954
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15956
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;

    .line 15959
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15910
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;

    .line 15911
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15912
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15914
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;

    .line 15917
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 16272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;

    .line 16273
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->id_:J

    .line 16274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;

    .line 16275
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;

    .line 16276
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 16277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    .line 16278
    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->totalCommentCount_:I

    .line 16279
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    .line 16280
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->ownerGaiaId_:J

    .line 16281
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16282
    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likeCount_:I

    .line 16283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    .line 16284
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 16285
    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->width_:I

    .line 16286
    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->height_:I

    .line 16287
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16288
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 16289
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->timestampMsec_:J

    .line 16290
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->size_:J

    .line 16291
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->entityVersion_:J

    .line 16292
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 16293
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 16294
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->mediaTag_:J

    .line 16295
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 16296
    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDeleted_:Z

    .line 16297
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->ORIGINAL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 16298
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 1

    .prologue
    .line 16606
    #calls: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->access$21300()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 16609
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 16174
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActivityIdCount()I
    .registers 2

    .prologue
    .line 16171
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

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
    .line 16168
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 16160
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public getComment(I)Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 3
    .parameter "index"

    .prologue
    .line 16019
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public getCommentCount()I
    .registers 2

    .prologue
    .line 16016
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

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
    .line 16009
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    return-object v0
.end method

.method public getCommentOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 16023
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;

    return-object v0
.end method

.method public getCommentOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16013
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15826
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 15841
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 15970
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;

    .line 15971
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 15972
    check-cast v1, Ljava/lang/String;

    .line 15980
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 15974
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15976
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15977
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 15978
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 15980
    goto :goto_8
.end method

.method public getEntityVersion()J
    .registers 3

    .prologue
    .line 16204
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->entityVersion_:J

    return-wide v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 16074
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16075
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 16076
    check-cast v1, Ljava/lang/String;

    .line 16084
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 16078
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 16080
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 16081
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 16082
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 16084
    goto :goto_8
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 16150
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->height_:I

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 15928
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->id_:J

    return-wide v0
.end method

.method public getIsDeleted()Z
    .registers 2

    .prologue
    .line 16258
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDeleted_:Z

    return v0
.end method

.method public getLikeCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16106
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likeCount_:I

    return v0
.end method

.method public getLikingUserId(I)J
    .registers 4
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16120
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

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
    .line 16117
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

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
    .line 16114
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    return-object v0
.end method

.method public getMediaTag()J
    .registers 3

    .prologue
    .line 16238
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->mediaTag_:J

    return-wide v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 16064
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2

    .prologue
    .line 16002
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 16130
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 11

    .prologue
    const v9, 0x8000

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 16405
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedSerializedSize:I

    .line 16406
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_f

    move v3, v2

    .line 16529
    .end local v2           #size:I
    .local v3, size:I
    :goto_e
    return v3

    .line 16408
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_f
    const/4 v2, 0x0

    .line 16409
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1f

    .line 16410
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16413
    :cond_1f
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2c

    .line 16414
    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->id_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 16417
    :cond_2c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3c

    .line 16418
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16421
    :cond_3c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v8, :cond_4b

    .line 16422
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16425
    :cond_4b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5b

    .line 16426
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16429
    :cond_5b
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5c
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_75

    .line 16430
    const/4 v5, 0x6

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16429
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 16433
    :cond_75
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_85

    .line 16434
    const/4 v4, 0x7

    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->totalCommentCount_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 16437
    :cond_85
    const/4 v1, 0x0

    :goto_86
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9e

    .line 16438
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16437
    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    .line 16441
    :cond_9e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_af

    .line 16442
    const/16 v4, 0x9

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->ownerGaiaId_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 16445
    :cond_af
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_c0

    .line 16446
    const/16 v4, 0xa

    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likeCount_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 16450
    :cond_c0
    const/4 v0, 0x0

    .line 16451
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_c2
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_de

    .line 16452
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 16451
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    .line 16455
    :cond_de
    add-int/2addr v2, v0

    .line 16456
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getLikingUserIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 16458
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_fb

    .line 16459
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16462
    :cond_fb
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_10c

    .line 16463
    const/16 v4, 0xd

    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->width_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 16466
    :cond_10c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_11d

    .line 16467
    const/16 v4, 0xe

    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->height_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 16470
    :cond_11d
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_12e

    .line 16471
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16475
    :cond_12e
    const/4 v0, 0x0

    .line 16476
    const/4 v1, 0x0

    :goto_130
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_146

    .line 16477
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 16476
    add-int/lit8 v1, v1, 0x1

    goto :goto_130

    .line 16480
    :cond_146
    add-int/2addr v2, v0

    .line 16481
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getActivityIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 16483
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_163

    .line 16484
    const/16 v4, 0x11

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->timestampMsec_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 16487
    :cond_163
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_174

    .line 16488
    const/16 v4, 0x12

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->size_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 16491
    :cond_174
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_182

    .line 16492
    const/16 v4, 0x13

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->entityVersion_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 16496
    :cond_182
    const/4 v0, 0x0

    .line 16497
    const/4 v1, 0x0

    :goto_184
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_19a

    .line 16498
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 16497
    add-int/lit8 v1, v1, 0x1

    goto :goto_184

    .line 16501
    :cond_19a
    add-int/2addr v2, v0

    .line 16502
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getStreamIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 16504
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    const/high16 v5, 0x1

    if-ne v4, v5, :cond_1b8

    .line 16505
    const/16 v4, 0x15

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16508
    :cond_1b8
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    const/high16 v5, 0x2

    if-ne v4, v5, :cond_1ca

    .line 16509
    const/16 v4, 0x16

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->mediaTag_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 16512
    :cond_1ca
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    const/high16 v5, 0x4

    if-ne v4, v5, :cond_1e0

    .line 16513
    const/16 v4, 0x17

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 16516
    :cond_1e0
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    const/high16 v5, 0x8

    if-ne v4, v5, :cond_1f2

    .line 16517
    const/16 v4, 0x18

    iget-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDeleted_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 16520
    :cond_1f2
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_205

    .line 16521
    const/16 v4, 0x19

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 16524
    :cond_205
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    const/high16 v5, 0x10

    if-ne v4, v5, :cond_21b

    .line 16525
    const/16 v4, 0x1a

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 16528
    :cond_21b
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedSerializedSize:I

    move v3, v2

    .line 16529
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_e
.end method

.method public getShape(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 3
    .parameter "index"

    .prologue
    .line 16050
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    return-object v0
.end method

.method public getShapeCount()I
    .registers 2

    .prologue
    .line 16047
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

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
    .line 16040
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    return-object v0
.end method

.method public getShapeOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShapeOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 16054
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShapeOrBuilder;

    return-object v0
.end method

.method public getShapeOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobileShapeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16044
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 16194
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->size_:J

    return-wide v0
.end method

.method public getStreamId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 16218
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStreamIdCount()I
    .registers 2

    .prologue
    .line 16215
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

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
    .line 16212
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getTimestampMsec()J
    .registers 3

    .prologue
    .line 16184
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->timestampMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 15938
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;

    .line 15939
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 15940
    check-cast v1, Ljava/lang/String;

    .line 15948
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 15942
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15944
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15945
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 15946
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 15948
    goto :goto_8
.end method

.method public getTotalCommentCount()I
    .registers 2

    .prologue
    .line 16033
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->totalCommentCount_:I

    return v0
.end method

.method public getUploadStatus()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    .registers 2

    .prologue
    .line 16268
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 15896
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;

    .line 15897
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 15898
    check-cast v1, Ljava/lang/String;

    .line 15906
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 15900
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15902
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15903
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 15904
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 15906
    goto :goto_8
.end method

.method public getUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 2

    .prologue
    .line 16248
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object v0
.end method

.method public getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2

    .prologue
    .line 16228
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 16140
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->width_:I

    return v0
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    .line 16157
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 15967
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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
    const v1, 0x8000

    .line 16201
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 16071
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

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
    .line 16147
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    .line 15925
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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
    const/high16 v1, 0x8

    .line 16255
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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
    .line 16103
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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

.method public hasMediaTag()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 16235
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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
    .line 16061
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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

.method public hasPhotoActionState()Z
    .registers 3

    .prologue
    .line 15999
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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
    .line 16127
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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

.method public hasSize()Z
    .registers 3

    .prologue
    .line 16191
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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

.method public hasTimestampMsec()Z
    .registers 3

    .prologue
    .line 16181
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 15935
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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
    .line 16030
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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

.method public hasUploadStatus()Z
    .registers 3

    .prologue
    const/high16 v1, 0x10

    .line 16265
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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

    .line 15893
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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
    const/high16 v1, 0x4

    .line 16245
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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
    const/high16 v1, 0x1

    .line 16225
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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
    .line 16137
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 16301
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedIsInitialized:B

    .line 16302
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 16317
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 16302
    goto :goto_9

    .line 16304
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getShapeCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 16305
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getShape(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 16306
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedIsInitialized:B

    move v2, v3

    .line 16307
    goto :goto_9

    .line 16304
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 16310
    :cond_24
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasAlbum()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 16311
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_38

    .line 16312
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedIsInitialized:B

    move v2, v3

    .line 16313
    goto :goto_9

    .line 16316
    :cond_38
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 16536
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 16322
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getSerializedSize()I

    .line 16323
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 16324
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16326
    :cond_17
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 16327
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->id_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16329
    :cond_22
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_30

    .line 16330
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16332
    :cond_30
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3d

    .line 16333
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16335
    :cond_3d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_49

    .line 16336
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16338
    :cond_49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4a
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 16339
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16338
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 16341
    :cond_61
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6f

    .line 16342
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->totalCommentCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 16344
    :cond_6f
    const/4 v0, 0x0

    :goto_70
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 16345
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16344
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 16347
    :cond_86
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_95

    .line 16348
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->ownerGaiaId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16350
    :cond_95
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_a4

    .line 16351
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likeCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 16353
    :cond_a4
    const/4 v0, 0x0

    :goto_a5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c1

    .line 16354
    const/16 v2, 0xb

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16353
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 16356
    :cond_c1
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_d0

    .line 16357
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16359
    :cond_d0
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_df

    .line 16360
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->width_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 16362
    :cond_df
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_ee

    .line 16363
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->height_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 16365
    :cond_ee
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_fd

    .line 16366
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16368
    :cond_fd
    const/4 v0, 0x0

    :goto_fe
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_112

    .line 16369
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16368
    add-int/lit8 v0, v0, 0x1

    goto :goto_fe

    .line 16371
    :cond_112
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_121

    .line 16372
    const/16 v1, 0x11

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->timestampMsec_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16374
    :cond_121
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_130

    .line 16375
    const/16 v1, 0x12

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->size_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16377
    :cond_130
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_142

    .line 16378
    const/16 v1, 0x13

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->entityVersion_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16380
    :cond_142
    const/4 v0, 0x0

    :goto_143
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_159

    .line 16381
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16380
    add-int/lit8 v0, v0, 0x1

    goto :goto_143

    .line 16383
    :cond_159
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_169

    .line 16384
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16386
    :cond_169
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_179

    .line 16387
    const/16 v1, 0x16

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->mediaTag_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16389
    :cond_179
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_18d

    .line 16390
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16392
    :cond_18d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_19d

    .line 16393
    const/16 v1, 0x18

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDeleted_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16395
    :cond_19d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1ae

    .line 16396
    const/16 v1, 0x19

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16398
    :cond_1ae
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    const/high16 v2, 0x10

    if-ne v1, v2, :cond_1c2

    .line 16399
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16401
    :cond_1c2
    return-void
.end method
