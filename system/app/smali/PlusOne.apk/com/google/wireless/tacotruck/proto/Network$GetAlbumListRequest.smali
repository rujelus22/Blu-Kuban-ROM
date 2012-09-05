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
    .line 14405
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    .line 14406
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->initFields()V

    .line 14407
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13672
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13798
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedIsInitialized:B

    .line 13833
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedSerializedSize:I

    .line 13673
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13667
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13674
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13798
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedIsInitialized:B

    .line 13833
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedSerializedSize:I

    .line 13674
    return-void
.end method

.method static synthetic access$18102(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13667
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$18202(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13667
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18302(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13667
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->maxAlbumCount_:I

    return p1
.end method

.method static synthetic access$18402(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13667
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->continuationToken_:I

    return p1
.end method

.method static synthetic access$18502(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13667
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->sharedAlbumsOnly_:Z

    return p1
.end method

.method static synthetic access$18602(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13667
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    return-object p1
.end method

.method static synthetic access$18700(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13667
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18702(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13667
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18802(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13667
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    .registers 1

    .prologue
    .line 13678
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13717
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 13718
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13719
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13721
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 13724
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

    .line 13790
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->ownerGaiaId_:J

    .line 13791
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 13792
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->maxAlbumCount_:I

    .line 13793
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->continuationToken_:I

    .line 13794
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->sharedAlbumsOnly_:Z

    .line 13795
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 13796
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    .line 13797
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 1

    .prologue
    .line 13945
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->access$17900()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    .registers 2

    .prologue
    .line 13765
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    return-object v0
.end method

.method public getAlbumsToFetch(I)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 3
    .parameter "index"

    .prologue
    .line 13782
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object v0
.end method

.method public getAlbumsToFetchCount()I
    .registers 2

    .prologue
    .line 13779
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
    .line 13772
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    return-object v0
.end method

.method public getAlbumsToFetchOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifierOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 13786
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
    .line 13776
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    return-object v0
.end method

.method public getContinuationToken()I
    .registers 2

    .prologue
    .line 13745
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->continuationToken_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13667
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    .registers 2

    .prologue
    .line 13682
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13703
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 13704
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13705
    check-cast v1, Ljava/lang/String;

    .line 13713
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13707
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13709
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13710
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13711
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13713
    goto :goto_8
.end method

.method public getMaxAlbumCount()I
    .registers 2

    .prologue
    .line 13735
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->maxAlbumCount_:I

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 13693
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 13835
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedSerializedSize:I

    .line 13836
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 13868
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 13838
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 13839
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_18

    .line 13840
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->ownerGaiaId_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 13843
    :cond_18
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_25

    .line 13844
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->maxAlbumCount_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 13847
    :cond_25
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 13848
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->continuationToken_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 13851
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_44

    .line 13852
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->sharedAlbumsOnly_:Z

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 13855
    :cond_44
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_54

    .line 13856
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13859
    :cond_54
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_64

    .line 13860
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13863
    :cond_64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_65
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7e

    .line 13864
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13863
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 13867
    :cond_7e
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 13868
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getSharedAlbumsOnly()Z
    .registers 2

    .prologue
    .line 13755
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->sharedAlbumsOnly_:Z

    return v0
.end method

.method public hasAlbumOptions()Z
    .registers 3

    .prologue
    .line 13762
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
    .line 13742
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
    .line 13700
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
    .line 13732
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

    .line 13690
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
    .line 13752
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

    .line 13800
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedIsInitialized:B

    .line 13801
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 13804
    :goto_8
    return v1

    .line 13801
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 13803
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->memoizedIsInitialized:B

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
    .line 13875
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

    .line 13809
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getSerializedSize()I

    .line 13810
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_11

    .line 13811
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13813
    :cond_11
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_1c

    .line 13814
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->maxAlbumCount_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13816
    :cond_1c
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2a

    .line 13817
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->continuationToken_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13819
    :cond_2a
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_37

    .line 13820
    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->sharedAlbumsOnly_:Z

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13822
    :cond_37
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_45

    .line 13823
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13825
    :cond_45
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_53

    .line 13826
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13828
    :cond_53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_54
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 13829
    const/4 v2, 0x7

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13828
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 13831
    :cond_6b
    return-void
.end method
