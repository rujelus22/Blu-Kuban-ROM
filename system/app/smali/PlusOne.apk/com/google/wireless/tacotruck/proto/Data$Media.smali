.class public final Lcom/google/wireless/tacotruck/proto/Data$Media;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MediaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;,
        Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoDataOrBuilder;,
        Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;,
        Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media;

.field private static final serialVersionUID:J


# instance fields
.field private albumArtist_:Ljava/lang/Object;

.field private album_:Ljava/lang/Object;

.field private bitField0_:I

.field private contentHtml_:Ljava/lang/Object;

.field private count_:I

.field private descriptionHtml_:Ljava/lang/Object;

.field private gadgetName_:Ljava/lang/Object;

.field private gadgetTitle_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

.field private playerHeight_:I

.field private playerUrl_:Ljava/lang/Object;

.field private playerWidth_:I

.field private thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

.field private thumbnailUrl_:Ljava/lang/Object;

.field private truncated_:Z

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field private url_:Ljava/lang/Object;

.field private videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7754
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media;

    .line 7755
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->initFields()V

    .line 7756
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5852
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6663
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedIsInitialized:B

    .line 6728
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedSerializedSize:I

    .line 5853
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5854
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6663
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedIsInitialized:B

    .line 6728
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedSerializedSize:I

    .line 5854
    return-void
.end method

.method static synthetic access$8202(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$Media$Type;)Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    return-object p1
.end method

.method static synthetic access$8302(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8402(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8502(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8602(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8702(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8802(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->count_:I

    return p1
.end method

.method static synthetic access$9002(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerWidth_:I

    return p1
.end method

.method static synthetic access$9102(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerHeight_:I

    return p1
.end method

.method static synthetic access$9202(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    return-object p1
.end method

.method static synthetic access$9302(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9502(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9602(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9702(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/google/wireless/tacotruck/proto/Data$Media;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->truncated_:Z

    return p1
.end method

.method static synthetic access$9902(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5847
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    return p1
.end method

.method private getAlbumArtistBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6559
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;

    .line 6560
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6561
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6563
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;

    .line 6566
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

.method private getAlbumBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6527
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;

    .line 6528
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6529
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6531
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;

    .line 6534
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

.method private getContentHtmlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6339
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;

    .line 6340
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6341
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6343
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;

    .line 6346
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 1

    .prologue
    .line 5858
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media;

    return-object v0
.end method

.method private getDescriptionHtmlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6403
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;

    .line 6404
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6405
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6407
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;

    .line 6410
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

.method private getGadgetNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6591
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;

    .line 6592
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6593
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6595
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;

    .line 6598
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

.method private getGadgetTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6623
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;

    .line 6624
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6625
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6627
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;

    .line 6630
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

.method private getPlayerUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6435
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;

    .line 6436
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6437
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6439
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;

    .line 6442
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

.method private getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6371
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;

    .line 6372
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6373
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6375
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;

    .line 6378
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
    .line 6307
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;

    .line 6308
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6309
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6311
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;

    .line 6314
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 6645
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6646
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;

    .line 6647
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;

    .line 6648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;

    .line 6649
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;

    .line 6650
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;

    .line 6651
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->NO_EMBEDDED_VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 6652
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->count_:I

    .line 6653
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerWidth_:I

    .line 6654
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerHeight_:I

    .line 6655
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 6656
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 6657
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;

    .line 6658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;

    .line 6659
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;

    .line 6660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;

    .line 6661
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->truncated_:Z

    .line 6662
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 1

    .prologue
    .line 6880
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->access$8000()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6827
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->access$7900(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6513
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;

    .line 6514
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6515
    check-cast v1, Ljava/lang/String;

    .line 6523
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6517
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6519
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6520
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6521
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6523
    goto :goto_8
.end method

.method public getAlbumArtist()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6545
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;

    .line 6546
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6547
    check-cast v1, Ljava/lang/String;

    .line 6555
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6549
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6551
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6552
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6553
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6555
    goto :goto_8
.end method

.method public getContentHtml()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6325
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;

    .line 6326
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6327
    check-cast v1, Ljava/lang/String;

    .line 6335
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6329
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6331
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6332
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6333
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6335
    goto :goto_8
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 6463
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 2

    .prologue
    .line 5862
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media;

    return-object v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6389
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;

    .line 6390
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6391
    check-cast v1, Ljava/lang/String;

    .line 6399
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6393
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6395
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6396
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6397
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6399
    goto :goto_8
.end method

.method public getGadgetName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6577
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;

    .line 6578
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6579
    check-cast v1, Ljava/lang/String;

    .line 6587
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6581
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6583
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6584
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6585
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6587
    goto :goto_8
.end method

.method public getGadgetTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6609
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;

    .line 6610
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6611
    check-cast v1, Ljava/lang/String;

    .line 6619
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6613
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6615
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6616
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6617
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6619
    goto :goto_8
.end method

.method public getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 2

    .prologue
    .line 6493
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    return-object v0
.end method

.method public getPlayerHeight()I
    .registers 2

    .prologue
    .line 6483
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerHeight_:I

    return v0
.end method

.method public getPlayerUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6421
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;

    .line 6422
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6423
    check-cast v1, Ljava/lang/String;

    .line 6431
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6425
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6427
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6428
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6429
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6431
    goto :goto_8
.end method

.method public getPlayerWidth()I
    .registers 2

    .prologue
    .line 6473
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerWidth_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6730
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedSerializedSize:I

    .line 6731
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    move v1, v0

    .line 6803
    .end local v0           #size:I
    .local v1, size:I
    :goto_d
    return v1

    .line 6733
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_e
    const/4 v0, 0x0

    .line 6734
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_20

    .line 6735
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6738
    :cond_20
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2f

    .line 6739
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6742
    :cond_2f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3f

    .line 6743
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6746
    :cond_3f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4e

    .line 6747
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6750
    :cond_4e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_5e

    .line 6751
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6754
    :cond_5e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_70

    .line 6755
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6758
    :cond_70
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_84

    .line 6759
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6762
    :cond_84
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_93

    .line 6763
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->count_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6766
    :cond_93
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_a4

    .line 6767
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerWidth_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6770
    :cond_a4
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_b5

    .line 6771
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerHeight_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6774
    :cond_b5
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_c6

    .line 6775
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6778
    :cond_c6
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_db

    .line 6779
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6782
    :cond_db
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_ee

    .line 6783
    const/16 v2, 0xd

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6786
    :cond_ee
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_101

    .line 6787
    const/16 v2, 0xe

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtistBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6790
    :cond_101
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_114

    .line 6791
    const/16 v2, 0xf

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6794
    :cond_114
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_128

    .line 6795
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6798
    :cond_128
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_13a

    .line 6799
    const/16 v2, 0x11

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->truncated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6802
    :cond_13a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedSerializedSize:I

    move v1, v0

    .line 6803
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_d
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6357
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;

    .line 6358
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6359
    check-cast v1, Ljava/lang/String;

    .line 6367
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6361
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6363
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6364
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6365
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6367
    goto :goto_8
.end method

.method public getThumbnailUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 2

    .prologue
    .line 6503
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object v0
.end method

.method public getTruncated()Z
    .registers 2

    .prologue
    .line 6641
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->truncated_:Z

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    .registers 2

    .prologue
    .line 6283
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6293
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;

    .line 6294
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6295
    check-cast v1, Ljava/lang/String;

    .line 6303
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6297
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6299
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6300
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6301
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6303
    goto :goto_8
.end method

.method public getVideoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    .registers 2

    .prologue
    .line 6453
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    return-object v0
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    .line 6510
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasAlbumArtist()Z
    .registers 3

    .prologue
    .line 6542
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasContentHtml()Z
    .registers 3

    .prologue
    .line 6322
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasCount()Z
    .registers 3

    .prologue
    .line 6460
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasDescriptionHtml()Z
    .registers 3

    .prologue
    .line 6386
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasGadgetName()Z
    .registers 3

    .prologue
    .line 6574
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasGadgetTitle()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 6606
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPhotoData()Z
    .registers 3

    .prologue
    .line 6490
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasPlayerHeight()Z
    .registers 3

    .prologue
    .line 6480
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasPlayerUrl()Z
    .registers 3

    .prologue
    .line 6418
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasPlayerWidth()Z
    .registers 3

    .prologue
    .line 6470
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasThumbnailUrl()Z
    .registers 3

    .prologue
    .line 6354
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasThumbnailUrlFormat()Z
    .registers 3

    .prologue
    .line 6500
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasTruncated()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 6638
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6280
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 6290
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public hasVideoMediaDisplay()Z
    .registers 3

    .prologue
    .line 6450
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 6665
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedIsInitialized:B

    .line 6666
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 6669
    :goto_8
    return v1

    .line 6666
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 6668
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 6810
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6674
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getSerializedSize()I

    .line 6675
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_19

    .line 6676
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6678
    :cond_19
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_26

    .line 6679
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6681
    :cond_26
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_34

    .line 6682
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6684
    :cond_34
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_41

    .line 6685
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6687
    :cond_41
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_4f

    .line 6688
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6690
    :cond_4f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5f

    .line 6691
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6693
    :cond_5f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_71

    .line 6694
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6696
    :cond_71
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7e

    .line 6697
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->count_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6699
    :cond_7e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8d

    .line 6700
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerWidth_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6702
    :cond_8d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9c

    .line 6703
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerHeight_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6705
    :cond_9c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_ab

    .line 6706
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6708
    :cond_ab
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_be

    .line 6709
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6711
    :cond_be
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_cf

    .line 6712
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6714
    :cond_cf
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_e0

    .line 6715
    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtistBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6717
    :cond_e0
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_f1

    .line 6718
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6720
    :cond_f1
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_103

    .line 6721
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6723
    :cond_103
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_113

    .line 6724
    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->truncated_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6726
    :cond_113
    return-void
.end method
