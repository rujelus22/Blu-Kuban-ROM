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
    .line 8397
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media;

    .line 8398
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->initFields()V

    .line 8399
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6344
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7306
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedIsInitialized:B

    .line 7371
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedSerializedSize:I

    .line 6345
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Media;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6346
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7306
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedIsInitialized:B

    .line 7371
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedSerializedSize:I

    .line 6346
    return-void
.end method

.method static synthetic access$10002(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    return-object p1
.end method

.method static synthetic access$10102(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object p1
.end method

.method static synthetic access$10202(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10302(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10402(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10502(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10602(Lcom/google/wireless/tacotruck/proto/Data$Media;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->truncated_:Z

    return p1
.end method

.method static synthetic access$10702(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    return p1
.end method

.method static synthetic access$9002(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$Media$Type;)Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    return-object p1
.end method

.method static synthetic access$9102(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9202(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9302(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9502(Lcom/google/wireless/tacotruck/proto/Data$Media;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9602(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    return-object p1
.end method

.method static synthetic access$9702(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->count_:I

    return p1
.end method

.method static synthetic access$9802(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerWidth_:I

    return p1
.end method

.method static synthetic access$9902(Lcom/google/wireless/tacotruck/proto/Data$Media;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6339
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerHeight_:I

    return p1
.end method

.method private getAlbumArtistBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 7202
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;

    .line 7203
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7204
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7206
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;

    .line 7209
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
    .line 7170
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;

    .line 7171
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7172
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7174
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;

    .line 7177
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
    .line 6982
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;

    .line 6983
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6984
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6986
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;

    .line 6989
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
    .line 6350
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media;

    return-object v0
.end method

.method private getDescriptionHtmlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 7046
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;

    .line 7047
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7048
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7050
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;

    .line 7053
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
    .line 7234
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;

    .line 7235
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7236
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7238
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;

    .line 7241
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
    .line 7266
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;

    .line 7267
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7268
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7270
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;

    .line 7273
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
    .line 7078
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;

    .line 7079
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7080
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7082
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;

    .line 7085
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
    .line 7014
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;

    .line 7015
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7016
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7018
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;

    .line 7021
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
    .line 6950
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;

    .line 6951
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6952
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6954
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;

    .line 6957
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

    .line 7288
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 7289
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;

    .line 7290
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;

    .line 7291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;

    .line 7292
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;

    .line 7293
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;

    .line 7294
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->NO_EMBEDDED_VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 7295
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->count_:I

    .line 7296
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerWidth_:I

    .line 7297
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerHeight_:I

    .line 7298
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 7299
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 7300
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;

    .line 7301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;

    .line 7302
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;

    .line 7303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;

    .line 7304
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->truncated_:Z

    .line 7305
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 1

    .prologue
    .line 7523
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->access$8800()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 7526
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

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
    .line 7470
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;->access$8700(Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7156
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;

    .line 7157
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7158
    check-cast v1, Ljava/lang/String;

    .line 7166
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7160
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7162
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7163
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7164
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->album_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7166
    goto :goto_8
.end method

.method public getAlbumArtist()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7188
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;

    .line 7189
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7190
    check-cast v1, Ljava/lang/String;

    .line 7198
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7192
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7194
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7195
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7196
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->albumArtist_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7198
    goto :goto_8
.end method

.method public getContentHtml()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6968
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;

    .line 6969
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6970
    check-cast v1, Ljava/lang/String;

    .line 6978
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6972
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6974
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6975
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6976
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->contentHtml_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6978
    goto :goto_8
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 7106
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6339
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 2

    .prologue
    .line 6354
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media;

    return-object v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7032
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;

    .line 7033
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7034
    check-cast v1, Ljava/lang/String;

    .line 7042
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7036
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7038
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7039
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7040
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->descriptionHtml_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7042
    goto :goto_8
.end method

.method public getGadgetName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7220
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;

    .line 7221
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7222
    check-cast v1, Ljava/lang/String;

    .line 7230
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7224
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7226
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7227
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7228
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7230
    goto :goto_8
.end method

.method public getGadgetTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7252
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;

    .line 7253
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7254
    check-cast v1, Ljava/lang/String;

    .line 7262
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7256
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7258
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7259
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7260
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->gadgetTitle_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7262
    goto :goto_8
.end method

.method public getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 2

    .prologue
    .line 7136
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    return-object v0
.end method

.method public getPlayerHeight()I
    .registers 2

    .prologue
    .line 7126
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerHeight_:I

    return v0
.end method

.method public getPlayerUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7064
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;

    .line 7065
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7066
    check-cast v1, Ljava/lang/String;

    .line 7074
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7068
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7070
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7071
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7072
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7074
    goto :goto_8
.end method

.method public getPlayerWidth()I
    .registers 2

    .prologue
    .line 7116
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

    .line 7373
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedSerializedSize:I

    .line 7374
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    move v1, v0

    .line 7446
    .end local v0           #size:I
    .local v1, size:I
    :goto_d
    return v1

    .line 7376
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_e
    const/4 v0, 0x0

    .line 7377
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_20

    .line 7378
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7381
    :cond_20
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2f

    .line 7382
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7385
    :cond_2f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3f

    .line 7386
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7389
    :cond_3f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4e

    .line 7390
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7393
    :cond_4e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_5e

    .line 7394
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7397
    :cond_5e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_70

    .line 7398
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7401
    :cond_70
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_84

    .line 7402
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7405
    :cond_84
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_93

    .line 7406
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->count_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7409
    :cond_93
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_a4

    .line 7410
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerWidth_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7413
    :cond_a4
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_b5

    .line 7414
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerHeight_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7417
    :cond_b5
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_c6

    .line 7418
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7421
    :cond_c6
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_db

    .line 7422
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7425
    :cond_db
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_ee

    .line 7426
    const/16 v2, 0xd

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7429
    :cond_ee
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_101

    .line 7430
    const/16 v2, 0xe

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtistBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7433
    :cond_101
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_114

    .line 7434
    const/16 v2, 0xf

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7437
    :cond_114
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_128

    .line 7438
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7441
    :cond_128
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_13a

    .line 7442
    const/16 v2, 0x11

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->truncated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7445
    :cond_13a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedSerializedSize:I

    move v1, v0

    .line 7446
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_d
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7000
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;

    .line 7001
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7002
    check-cast v1, Ljava/lang/String;

    .line 7010
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7004
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7006
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7007
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7008
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7010
    goto :goto_8
.end method

.method public getThumbnailUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 2

    .prologue
    .line 7146
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object v0
.end method

.method public getTruncated()Z
    .registers 2

    .prologue
    .line 7284
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->truncated_:Z

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    .registers 2

    .prologue
    .line 6926
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6936
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;

    .line 6937
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6938
    check-cast v1, Ljava/lang/String;

    .line 6946
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6940
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6942
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6943
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6944
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6946
    goto :goto_8
.end method

.method public getVideoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    .registers 2

    .prologue
    .line 7096
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    return-object v0
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    .line 7153
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
    .line 7185
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
    .line 6965
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
    .line 7103
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
    .line 7029
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
    .line 7217
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

    .line 7249
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
    .line 7133
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
    .line 7123
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
    .line 7061
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
    .line 7113
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
    .line 6997
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
    .line 7143
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

    .line 7281
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

    .line 6923
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
    .line 6933
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
    .line 7093
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

    .line 7308
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedIsInitialized:B

    .line 7309
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 7312
    :goto_8
    return v1

    .line 7309
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 7311
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6339
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7524
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6339
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;
    .registers 2

    .prologue
    .line 7528
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Media;)Lcom/google/wireless/tacotruck/proto/Data$Media$Builder;

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
    .line 7453
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

    .line 7317
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getSerializedSize()I

    .line 7318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_19

    .line 7319
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->type_:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7321
    :cond_19
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_26

    .line 7322
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7324
    :cond_26
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_34

    .line 7325
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7327
    :cond_34
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_41

    .line 7328
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7330
    :cond_41
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_4f

    .line 7331
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7333
    :cond_4f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5f

    .line 7334
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7336
    :cond_5f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_71

    .line 7337
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->videoMediaDisplay_:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7339
    :cond_71
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7e

    .line 7340
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->count_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7342
    :cond_7e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8d

    .line 7343
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerWidth_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7345
    :cond_8d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9c

    .line 7346
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->playerHeight_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7348
    :cond_9c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_ab

    .line 7349
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->photoData_:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7351
    :cond_ab
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_be

    .line 7352
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->thumbnailUrlFormat_:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7354
    :cond_be
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_cf

    .line 7355
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7357
    :cond_cf
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_e0

    .line 7358
    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtistBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7360
    :cond_e0
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_f1

    .line 7361
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7363
    :cond_f1
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_103

    .line 7364
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getGadgetTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7366
    :cond_103
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_113

    .line 7367
    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media;->truncated_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7369
    :cond_113
    return-void
.end method
