.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAlbumListRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

.field private static final serialVersionUID:J


# instance fields
.field private albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

.field private albumsToFetch_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private continuationToken_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private maxAlbumCount_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private sharedAlbumsOnly_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14956
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    .line 14957
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->initFields()V

    .line 14958
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14223
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14349
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedIsInitialized:B

    .line 14384
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedSerializedSize:I

    .line 14224
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14218
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14225
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14349
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedIsInitialized:B

    .line 14384
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedSerializedSize:I

    .line 14225
    return-void
.end method

.method static synthetic access$18702(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14218
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$18802(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14218
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18902(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14218
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->maxAlbumCount_:I

    return p1
.end method

.method static synthetic access$19002(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14218
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->continuationToken_:I

    return p1
.end method

.method static synthetic access$19102(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14218
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->sharedAlbumsOnly_:Z

    return p1
.end method

.method static synthetic access$19202(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14218
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    return-object p1
.end method

.method static synthetic access$19300(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14218
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19302(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14218
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19402(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14218
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    .registers 1

    .prologue
    .line 14229
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14268
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14269
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14270
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14272
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14275
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
    const/4 v2, 0x0

    .line 14341
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->ownerGaiaId_:J

    .line 14342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14343
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->maxAlbumCount_:I

    .line 14344
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->continuationToken_:I

    .line 14345
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->sharedAlbumsOnly_:Z

    .line 14346
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14347
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    .line 14348
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 1

    .prologue
    .line 14496
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->access$18500()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 14499
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    .registers 2

    .prologue
    .line 14316
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    return-object v0
.end method

.method public getAlbumsToFetch(I)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 3
    .parameter "index"

    .prologue
    .line 14333
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object v0
.end method

.method public getAlbumsToFetchCount()I
    .registers 2

    .prologue
    .line 14330
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlbumsToFetchList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14323
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    return-object v0
.end method

.method public getAlbumsToFetchOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifierOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 14337
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifierOrBuilder;

    return-object v0
.end method

.method public getAlbumsToFetchOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifierOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14327
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    return-object v0
.end method

.method public getContinuationToken()I
    .registers 2

    .prologue
    .line 14296
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->continuationToken_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14218
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    .registers 2

    .prologue
    .line 14233
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14254
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14255
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14256
    check-cast v1, Ljava/lang/String;

    .line 14264
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14258
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14260
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14261
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14262
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14264
    goto :goto_8
.end method

.method public getMaxAlbumCount()I
    .registers 2

    .prologue
    .line 14286
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->maxAlbumCount_:I

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 14244
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 14386
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedSerializedSize:I

    .line 14387
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 14419
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 14389
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 14390
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_18

    .line 14391
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->ownerGaiaId_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 14394
    :cond_18
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_25

    .line 14395
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->maxAlbumCount_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 14398
    :cond_25
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 14399
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->continuationToken_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 14402
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_44

    .line 14403
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->sharedAlbumsOnly_:Z

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 14406
    :cond_44
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_54

    .line 14407
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14410
    :cond_54
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_64

    .line 14411
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14414
    :cond_64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_65
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7e

    .line 14415
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14414
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 14418
    :cond_7e
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 14419
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getSharedAlbumsOnly()Z
    .registers 2

    .prologue
    .line 14306
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->sharedAlbumsOnly_:Z

    return v0
.end method

.method public hasAlbumOptions()Z
    .registers 3

    .prologue
    .line 14313
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

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

.method public hasContinuationToken()Z
    .registers 3

    .prologue
    .line 14293
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

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

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 14251
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

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

.method public hasMaxAlbumCount()Z
    .registers 3

    .prologue
    .line 14283
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14241
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSharedAlbumsOnly()Z
    .registers 3

    .prologue
    .line 14303
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 14351
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedIsInitialized:B

    .line 14352
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 14355
    :goto_8
    return v1

    .line 14352
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 14354
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14218
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14497
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14218
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14501
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

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
    .line 14426
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
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getSerializedSize()I

    .line 14361
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_11

    .line 14362
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14364
    :cond_11
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_1c

    .line 14365
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->maxAlbumCount_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14367
    :cond_1c
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2a

    .line 14368
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->continuationToken_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14370
    :cond_2a
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_37

    .line 14371
    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->sharedAlbumsOnly_:Z

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14373
    :cond_37
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_45

    .line 14374
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14376
    :cond_45
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_53

    .line 14377
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14379
    :cond_53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_54
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 14380
    const/4 v2, 0x7

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14379
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 14382
    :cond_6b
    return-void
.end method
