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
    .line 19441
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 19442
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->initFields()V

    .line 19443
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 17133
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 17612
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedIsInitialized:B

    .line 17719
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedSerializedSize:I

    .line 17134
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 17135
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17612
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedIsInitialized:B

    .line 17719
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedSerializedSize:I

    .line 17135
    return-void
.end method

.method static synthetic access$23102(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23202(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->id_:J

    return-wide p1
.end method

.method static synthetic access$23302(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23402(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23502(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object p1
.end method

.method static synthetic access$23600(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17128
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$23602(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$23702(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->totalCommentCount_:I

    return p1
.end method

.method static synthetic access$23800(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17128
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$23802(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$23902(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$24002(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$24102(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likeCount_:I

    return p1
.end method

.method static synthetic access$24200(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17128
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$24202(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$24302(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object p1
.end method

.method static synthetic access$24402(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->width_:I

    return p1
.end method

.method static synthetic access$24502(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->height_:I

    return p1
.end method

.method static synthetic access$24602(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object p1
.end method

.method static synthetic access$24700(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17128
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$24702(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$24802(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->timestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$24902(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->size_:J

    return-wide p1
.end method

.method static synthetic access$25002(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->entityVersion_:J

    return-wide p1
.end method

.method static synthetic access$25100(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17128
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$25102(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$25202(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$VideoData;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    return-object p1
.end method

.method static synthetic access$25302(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->mediaTag_:J

    return-wide p1
.end method

.method static synthetic access$25402(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object p1
.end method

.method static synthetic access$25502(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDeleted_:Z

    return p1
.end method

.method static synthetic access$25602(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    return-object p1
.end method

.method static synthetic access$25702(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDownloadable_:Z

    return p1
.end method

.method static synthetic access$25802(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17128
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 1

    .prologue
    .line 17139
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17286
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;

    .line 17287
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17288
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17290
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;

    .line 17293
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
    .line 17390
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17391
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17392
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17394
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17397
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
    .line 17254
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;

    .line 17255
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17256
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17258
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;

    .line 17261
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
    .line 17212
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;

    .line 17213
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17214
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17216
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;

    .line 17219
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
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 17584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;

    .line 17585
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->id_:J

    .line 17586
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;

    .line 17587
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;

    .line 17588
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 17589
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    .line 17590
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->totalCommentCount_:I

    .line 17591
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    .line 17592
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->ownerGaiaId_:J

    .line 17593
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17594
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likeCount_:I

    .line 17595
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    .line 17596
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 17597
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->width_:I

    .line 17598
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->height_:I

    .line 17599
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 17600
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 17601
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->timestampMsec_:J

    .line 17602
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->size_:J

    .line 17603
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->entityVersion_:J

    .line 17604
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 17605
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 17606
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->mediaTag_:J

    .line 17607
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 17608
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDeleted_:Z

    .line 17609
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->ORIGINAL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 17610
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDownloadable_:Z

    .line 17611
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 1

    .prologue
    .line 17926
    #calls: Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->access$22900()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 17929
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
    .line 17476
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActivityIdCount()I
    .registers 2

    .prologue
    .line 17473
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
    .line 17470
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 17462
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public getComment(I)Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 3
    .parameter "index"

    .prologue
    .line 17321
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public getCommentCount()I
    .registers 2

    .prologue
    .line 17318
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
    .line 17311
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    return-object v0
.end method

.method public getCommentOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 17325
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
    .line 17315
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 17143
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 17272
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;

    .line 17273
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 17274
    check-cast v1, Ljava/lang/String;

    .line 17282
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 17276
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17278
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17279
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 17280
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 17282
    goto :goto_8
.end method

.method public getEntityVersion()J
    .registers 3

    .prologue
    .line 17506
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->entityVersion_:J

    return-wide v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 17376
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17377
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 17378
    check-cast v1, Ljava/lang/String;

    .line 17386
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 17380
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17382
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17383
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 17384
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 17386
    goto :goto_8
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 17452
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->height_:I

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 17230
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->id_:J

    return-wide v0
.end method

.method public getIsDeleted()Z
    .registers 2

    .prologue
    .line 17560
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDeleted_:Z

    return v0
.end method

.method public getIsDownloadable()Z
    .registers 2

    .prologue
    .line 17580
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDownloadable_:Z

    return v0
.end method

.method public getLikeCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17408
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likeCount_:I

    return v0
.end method

.method public getLikingUserId(I)J
    .registers 4
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17422
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
    .line 17419
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
    .line 17416
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    return-object v0
.end method

.method public getMediaTag()J
    .registers 3

    .prologue
    .line 17540
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->mediaTag_:J

    return-wide v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 17366
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2

    .prologue
    .line 17304
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 17432
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

    .line 17721
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedSerializedSize:I

    .line 17722
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_f

    move v3, v2

    .line 17849
    .end local v2           #size:I
    .local v3, size:I
    :goto_e
    return v3

    .line 17724
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_f
    const/4 v2, 0x0

    .line 17725
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1f

    .line 17726
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17729
    :cond_1f
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2c

    .line 17730
    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->id_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 17733
    :cond_2c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3c

    .line 17734
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17737
    :cond_3c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v8, :cond_4b

    .line 17738
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17741
    :cond_4b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5b

    .line 17742
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17745
    :cond_5b
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5c
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_75

    .line 17746
    const/4 v5, 0x6

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17745
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 17749
    :cond_75
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_85

    .line 17750
    const/4 v4, 0x7

    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->totalCommentCount_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 17753
    :cond_85
    const/4 v1, 0x0

    :goto_86
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9e

    .line 17754
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17753
    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    .line 17757
    :cond_9e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_af

    .line 17758
    const/16 v4, 0x9

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->ownerGaiaId_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 17761
    :cond_af
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_c0

    .line 17762
    const/16 v4, 0xa

    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likeCount_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 17766
    :cond_c0
    const/4 v0, 0x0

    .line 17767
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_c2
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_de

    .line 17768
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 17767
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    .line 17771
    :cond_de
    add-int/2addr v2, v0

    .line 17772
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getLikingUserIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 17774
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_fb

    .line 17775
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17778
    :cond_fb
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_10c

    .line 17779
    const/16 v4, 0xd

    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->width_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 17782
    :cond_10c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_11d

    .line 17783
    const/16 v4, 0xe

    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->height_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 17786
    :cond_11d
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_12e

    .line 17787
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17791
    :cond_12e
    const/4 v0, 0x0

    .line 17792
    const/4 v1, 0x0

    :goto_130
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_146

    .line 17793
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 17792
    add-int/lit8 v1, v1, 0x1

    goto :goto_130

    .line 17796
    :cond_146
    add-int/2addr v2, v0

    .line 17797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getActivityIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 17799
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_163

    .line 17800
    const/16 v4, 0x11

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->timestampMsec_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 17803
    :cond_163
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_174

    .line 17804
    const/16 v4, 0x12

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->size_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 17807
    :cond_174
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_182

    .line 17808
    const/16 v4, 0x13

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->entityVersion_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 17812
    :cond_182
    const/4 v0, 0x0

    .line 17813
    const/4 v1, 0x0

    :goto_184
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_19a

    .line 17814
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 17813
    add-int/lit8 v1, v1, 0x1

    goto :goto_184

    .line 17817
    :cond_19a
    add-int/2addr v2, v0

    .line 17818
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getStreamIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 17820
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    const/high16 v5, 0x1

    if-ne v4, v5, :cond_1b8

    .line 17821
    const/16 v4, 0x15

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17824
    :cond_1b8
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    const/high16 v5, 0x2

    if-ne v4, v5, :cond_1ca

    .line 17825
    const/16 v4, 0x16

    iget-wide v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->mediaTag_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 17828
    :cond_1ca
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    const/high16 v5, 0x4

    if-ne v4, v5, :cond_1e0

    .line 17829
    const/16 v4, 0x17

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 17832
    :cond_1e0
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    const/high16 v5, 0x8

    if-ne v4, v5, :cond_1f2

    .line 17833
    const/16 v4, 0x18

    iget-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDeleted_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 17836
    :cond_1f2
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_205

    .line 17837
    const/16 v4, 0x19

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 17840
    :cond_205
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    const/high16 v5, 0x10

    if-ne v4, v5, :cond_21b

    .line 17841
    const/16 v4, 0x1a

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 17844
    :cond_21b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v5, 0x20

    and-int/2addr v4, v5

    const/high16 v5, 0x20

    if-ne v4, v5, :cond_22d

    .line 17845
    const/16 v4, 0x1b

    iget-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDownloadable_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 17848
    :cond_22d
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedSerializedSize:I

    move v3, v2

    .line 17849
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_e
.end method

.method public getShape(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 3
    .parameter "index"

    .prologue
    .line 17352
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    return-object v0
.end method

.method public getShapeCount()I
    .registers 2

    .prologue
    .line 17349
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
    .line 17342
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    return-object v0
.end method

.method public getShapeOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShapeOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 17356
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
    .line 17346
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 17496
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->size_:J

    return-wide v0
.end method

.method public getStreamId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 17520
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStreamIdCount()I
    .registers 2

    .prologue
    .line 17517
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
    .line 17514
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getTimestampMsec()J
    .registers 3

    .prologue
    .line 17486
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->timestampMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 17240
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;

    .line 17241
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 17242
    check-cast v1, Ljava/lang/String;

    .line 17250
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 17244
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17246
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17247
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 17248
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->title_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 17250
    goto :goto_8
.end method

.method public getTotalCommentCount()I
    .registers 2

    .prologue
    .line 17335
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->totalCommentCount_:I

    return v0
.end method

.method public getUploadStatus()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    .registers 2

    .prologue
    .line 17570
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 17198
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;

    .line 17199
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 17200
    check-cast v1, Ljava/lang/String;

    .line 17208
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 17202
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17204
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17205
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 17206
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 17208
    goto :goto_8
.end method

.method public getUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 2

    .prologue
    .line 17550
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object v0
.end method

.method public getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .registers 2

    .prologue
    .line 17530
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 17442
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->width_:I

    return v0
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    .line 17459
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
    .line 17269
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

    .line 17503
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
    .line 17373
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
    .line 17449
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
    .line 17227
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

    .line 17557
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

.method public hasIsDownloadable()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 17577
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
    .line 17405
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

    .line 17537
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
    .line 17363
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
    .line 17301
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
    .line 17429
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
    .line 17493
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
    .line 17483
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
    .line 17237
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
    .line 17332
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

    .line 17567
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

    .line 17195
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

    .line 17547
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

    .line 17527
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
    .line 17439
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

    .line 17614
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedIsInitialized:B

    .line 17615
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 17630
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 17615
    goto :goto_9

    .line 17617
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getShapeCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 17618
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getShape(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 17619
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedIsInitialized:B

    move v2, v3

    .line 17620
    goto :goto_9

    .line 17617
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 17623
    :cond_24
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasAlbum()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 17624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_38

    .line 17625
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedIsInitialized:B

    move v2, v3

    .line 17626
    goto :goto_9

    .line 17629
    :cond_38
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17927
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    .registers 2

    .prologue
    .line 17931
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 17856
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

    .line 17635
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getSerializedSize()I

    .line 17636
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 17637
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17639
    :cond_17
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 17640
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->id_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17642
    :cond_22
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_30

    .line 17643
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17645
    :cond_30
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3d

    .line 17646
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17648
    :cond_3d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_49

    .line 17649
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17651
    :cond_49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4a
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 17652
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->comment_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17651
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 17654
    :cond_61
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6f

    .line 17655
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->totalCommentCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17657
    :cond_6f
    const/4 v0, 0x0

    :goto_70
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 17658
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->shape_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17657
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 17660
    :cond_86
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_95

    .line 17661
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->ownerGaiaId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17663
    :cond_95
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_a4

    .line 17664
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likeCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17666
    :cond_a4
    const/4 v0, 0x0

    :goto_a5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c1

    .line 17667
    const/16 v2, 0xb

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->likingUserId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17666
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 17669
    :cond_c1
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_d0

    .line 17670
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17672
    :cond_d0
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_df

    .line 17673
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->width_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17675
    :cond_df
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_ee

    .line 17676
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->height_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17678
    :cond_ee
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_fd

    .line 17679
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17681
    :cond_fd
    const/4 v0, 0x0

    :goto_fe
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_112

    .line 17682
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17681
    add-int/lit8 v0, v0, 0x1

    goto :goto_fe

    .line 17684
    :cond_112
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_121

    .line 17685
    const/16 v1, 0x11

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->timestampMsec_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17687
    :cond_121
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_130

    .line 17688
    const/16 v1, 0x12

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->size_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17690
    :cond_130
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_142

    .line 17691
    const/16 v1, 0x13

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->entityVersion_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17693
    :cond_142
    const/4 v0, 0x0

    :goto_143
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_159

    .line 17694
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17693
    add-int/lit8 v0, v0, 0x1

    goto :goto_143

    .line 17696
    :cond_159
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_169

    .line 17697
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->videoData_:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17699
    :cond_169
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_179

    .line 17700
    const/16 v1, 0x16

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->mediaTag_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17702
    :cond_179
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_18d

    .line 17703
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->urlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 17705
    :cond_18d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_19d

    .line 17706
    const/16 v1, 0x18

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDeleted_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17708
    :cond_19d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1ae

    .line 17709
    const/16 v1, 0x19

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17711
    :cond_1ae
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    const/high16 v2, 0x10

    if-ne v1, v2, :cond_1c2

    .line 17712
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->uploadStatus_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 17714
    :cond_1c2
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->bitField0_:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_1d2

    .line 17715
    const/16 v1, 0x1b

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isDownloadable_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17717
    :cond_1d2
    return-void
.end method
