.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoAlbum"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

.field private static final serialVersionUID:J


# instance fields
.field private audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private bitField0_:I

.field private cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

.field private entityVersion_:J

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private id_:J

.field private identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private preview_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field

.field private streamId_:Ljava/lang/Object;

.field private timestampMsec_:J

.field private title_:Ljava/lang/Object;

.field private totalPhotos_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14617
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 14618
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->initFields()V

    .line 14619
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13469
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13694
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedIsInitialized:B

    .line 13756
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedSerializedSize:I

    .line 13470
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13471
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13694
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedIsInitialized:B

    .line 13756
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedSerializedSize:I

    .line 13471
    return-void
.end method

.method static synthetic access$18402(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->id_:J

    return-wide p1
.end method

.method static synthetic access$18502(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18602(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->totalPhotos_:I

    return p1
.end method

.method static synthetic access$18702(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$18802(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18902(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object p1
.end method

.method static synthetic access$19002(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->timestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$19102(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19202(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object p1
.end method

.method static synthetic access$19300(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13464
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19302(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19402(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object p1
.end method

.method static synthetic access$19502(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->entityVersion_:J

    return-wide p1
.end method

.method static synthetic access$19602(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13464
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 1

    .prologue
    .line 13475
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13566
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 13567
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13568
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13570
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 13573
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

.method private getStreamIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13618
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;

    .line 13619
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13620
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13622
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;

    .line 13625
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
    .line 13514
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;

    .line 13515
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13516
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13518
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;

    .line 13521
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
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 13681
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->id_:J

    .line 13682
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;

    .line 13683
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->totalPhotos_:I

    .line 13684
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->ownerGaiaId_:J

    .line 13685
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 13686
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 13687
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->timestampMsec_:J

    .line 13688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;

    .line 13689
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 13690
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    .line 13691
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 13692
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->entityVersion_:J

    .line 13693
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 1

    .prologue
    .line 13888
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->access$18200()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13891
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 13636
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 13584
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13464
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 13479
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public getEntityVersion()J
    .registers 3

    .prologue
    .line 13677
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->entityVersion_:J

    return-wide v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13552
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 13553
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13554
    check-cast v1, Ljava/lang/String;

    .line 13562
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13556
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13558
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13559
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13560
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13562
    goto :goto_8
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 13490
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->id_:J

    return-wide v0
.end method

.method public getIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 2

    .prologue
    .line 13667
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 13542
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPreview(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 13653
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPreviewCount()I
    .registers 2

    .prologue
    .line 13650
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPreviewList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13643
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 13657
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;

    return-object v0
.end method

.method public getPreviewOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13647
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 13758
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedSerializedSize:I

    .line 13759
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 13811
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 13761
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 13762
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1a

    .line 13763
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->id_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 13766
    :cond_1a
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_29

    .line 13767
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13770
    :cond_29
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_37

    .line 13771
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->totalPhotos_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 13774
    :cond_37
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v8, :cond_44

    .line 13775
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->ownerGaiaId_:J

    invoke-static {v7, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 13778
    :cond_44
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_54

    .line 13779
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13782
    :cond_54
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_64

    .line 13783
    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->timestampMsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 13786
    :cond_64
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_76

    .line 13787
    const/4 v3, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13790
    :cond_76
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_85

    .line 13791
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13794
    :cond_85
    const/4 v0, 0x0

    .local v0, i:I
    :goto_86
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a0

    .line 13795
    const/16 v4, 0x9

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13794
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 13798
    :cond_a0
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_b3

    .line 13799
    const/16 v3, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13802
    :cond_b3
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_c4

    .line 13803
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13806
    :cond_c4
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_d5

    .line 13807
    const/16 v3, 0xc

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->entityVersion_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 13810
    :cond_d5
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedSerializedSize:I

    move v2, v1

    .line 13811
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13604
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;

    .line 13605
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13606
    check-cast v1, Ljava/lang/String;

    .line 13614
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13608
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13610
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13611
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13612
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->streamId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13614
    goto :goto_8
.end method

.method public getTimestampMsec()J
    .registers 3

    .prologue
    .line 13594
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->timestampMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13500
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;

    .line 13501
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13502
    check-cast v1, Ljava/lang/String;

    .line 13510
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13504
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13506
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13507
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13508
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->title_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13510
    goto :goto_8
.end method

.method public getTotalPhotos()I
    .registers 2

    .prologue
    .line 13532
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->totalPhotos_:I

    return v0
.end method

.method public hasAudience()Z
    .registers 3

    .prologue
    .line 13633
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasCover()Z
    .registers 3

    .prologue
    .line 13581
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasEntityVersion()Z
    .registers 3

    .prologue
    .line 13674
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 13549
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13487
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasIdentifier()Z
    .registers 3

    .prologue
    .line 13664
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 13539
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    .line 13601
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasTimestampMsec()Z
    .registers 3

    .prologue
    .line 13591
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 13497
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public hasTotalPhotos()Z
    .registers 3

    .prologue
    .line 13529
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 13696
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedIsInitialized:B

    .line 13697
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 13712
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 13697
    goto :goto_9

    .line 13699
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasCover()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 13700
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_20

    .line 13701
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedIsInitialized:B

    move v2, v3

    .line 13702
    goto :goto_9

    .line 13705
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPreviewCount()I

    move-result v4

    if-ge v0, v4, :cond_38

    .line 13706
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPreview(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_35

    .line 13707
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedIsInitialized:B

    move v2, v3

    .line 13708
    goto :goto_9

    .line 13705
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 13711
    :cond_38
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->memoizedIsInitialized:B

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
    .line 13818
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
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13717
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getSerializedSize()I

    .line 13718
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_13

    .line 13719
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->id_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13721
    :cond_13
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_20

    .line 13722
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13724
    :cond_20
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2c

    .line 13725
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->totalPhotos_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13727
    :cond_2c
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_37

    .line 13728
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->ownerGaiaId_:J

    invoke-virtual {p1, v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13730
    :cond_37
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_45

    .line 13731
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->cover_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13733
    :cond_45
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_53

    .line 13734
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->timestampMsec_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13736
    :cond_53
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_63

    .line 13737
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13739
    :cond_63
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_70

    .line 13740
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13742
    :cond_70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_71
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_89

    .line 13743
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->preview_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13742
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 13745
    :cond_89
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_9a

    .line 13746
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13748
    :cond_9a
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a9

    .line 13749
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->identifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13751
    :cond_a9
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b8

    .line 13752
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->entityVersion_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13754
    :cond_b8
    return-void
.end method
