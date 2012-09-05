.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequestOrBuilder;"
    }
.end annotation


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

.field private ownerGaiaId_:J

.field private sharedAlbumsOnly_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13957
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14270
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    .line 13958
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maybeForceBuilderInitialization()V

    .line 13959
    return-void
.end method

.method static synthetic access$17900()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 1

    .prologue
    .line 13952
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 1

    .prologue
    .line 13964
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAlbumsToFetchIsMutable()V
    .registers 3

    .prologue
    .line 14316
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 14317
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    .line 14318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14320
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13962
    return-void
.end method


# virtual methods
.method public addAlbumsToFetch(ILcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 14376
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14377
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14379
    return-object p0
.end method

.method public addAlbumsToFetch(ILcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14359
    if-nez p2, :cond_8

    .line 14360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14362
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14363
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14365
    return-object p0
.end method

.method public addAlbumsToFetch(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 14369
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14370
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14372
    return-object p0
.end method

.method public addAlbumsToFetch(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14349
    if-nez p1, :cond_8

    .line 14350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14352
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14353
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14355
    return-object p0
.end method

.method public addAllAlbumsToFetch(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 14383
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14384
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14386
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    .registers 3

    .prologue
    .line 13995
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    .line 13996
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13997
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13999
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13952
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    .registers 6

    .prologue
    .line 14013
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 14014
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14015
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14016
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 14017
    or-int/lit8 v2, v2, 0x1

    .line 14019
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18102(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;J)J

    .line 14020
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 14021
    or-int/lit8 v2, v2, 0x2

    .line 14023
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18202(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14024
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 14025
    or-int/lit8 v2, v2, 0x4

    .line 14027
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maxAlbumCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->maxAlbumCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18302(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;I)I

    .line 14028
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 14029
    or-int/lit8 v2, v2, 0x8

    .line 14031
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->continuationToken_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->continuationToken_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18402(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;I)I

    .line 14032
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 14033
    or-int/lit8 v2, v2, 0x10

    .line 14035
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->sharedAlbumsOnly_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->sharedAlbumsOnly_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18502(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Z)Z

    .line 14036
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 14037
    or-int/lit8 v2, v2, 0x20

    .line 14039
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18602(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14040
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 14041
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    .line 14042
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14044
    :cond_6a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18702(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Ljava/util/List;)Ljava/util/List;

    .line 14045
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18802(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;I)I

    .line 14046
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13952
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13952
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 13968
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13969
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ownerGaiaId_:J

    .line 13970
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 13971
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 13972
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 13973
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maxAlbumCount_:I

    .line 13974
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 13975
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->continuationToken_:I

    .line 13976
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 13977
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->sharedAlbumsOnly_:Z

    .line 13978
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 13979
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 13980
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 13981
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    .line 13982
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 13983
    return-object p0
.end method

.method public clearAlbumOptions()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14306
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14308
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14309
    return-object p0
.end method

.method public clearAlbumsToFetch()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14389
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    .line 14390
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14392
    return-object p0
.end method

.method public clearContinuationToken()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14242
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14243
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->continuationToken_:I

    .line 14245
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14195
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14196
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14198
    return-object p0
.end method

.method public clearMaxAlbumCount()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14221
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14222
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maxAlbumCount_:I

    .line 14224
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3

    .prologue
    .line 14164
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ownerGaiaId_:J

    .line 14167
    return-object p0
.end method

.method public clearSharedAlbumsOnly()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14263
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->sharedAlbumsOnly_:Z

    .line 14266
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13952
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13952
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3

    .prologue
    .line 13987
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

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
    .line 13952
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    .registers 2

    .prologue
    .line 14275
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    return-object v0
.end method

.method public getAlbumsToFetch(I)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 3
    .parameter "index"

    .prologue
    .line 14329
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object v0
.end method

.method public getAlbumsToFetchCount()I
    .registers 2

    .prologue
    .line 14326
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContinuationToken()I
    .registers 2

    .prologue
    .line 14233
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->continuationToken_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 13952
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13952
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    .registers 2

    .prologue
    .line 13991
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14176
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14177
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14178
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14179
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14182
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

.method public getMaxAlbumCount()I
    .registers 2

    .prologue
    .line 14212
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maxAlbumCount_:I

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 14155
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getSharedAlbumsOnly()Z
    .registers 2

    .prologue
    .line 14254
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->sharedAlbumsOnly_:Z

    return v0
.end method

.method public hasAlbumOptions()Z
    .registers 3

    .prologue
    .line 14272
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

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
    .line 14230
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

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
    .line 14173
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

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
    .line 14209
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

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

    .line 14152
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

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
    .line 14251
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

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

.method public mergeAlbumOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14294
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 14296
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14302
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14303
    return-object p0

    .line 14299
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

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
    .line 13952
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

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
    .line 13952
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14091
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 14092
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_7a

    .line 14097
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14099
    :sswitch_d
    return-object p0

    .line 14104
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14105
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 14109
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14110
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maxAlbumCount_:I

    goto :goto_0

    .line 14114
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14115
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->continuationToken_:I

    goto :goto_0

    .line 14119
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14120
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->sharedAlbumsOnly_:Z

    goto :goto_0

    .line 14124
    :sswitch_42
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    .line 14125
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->hasAlbumOptions()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 14126
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->getAlbumOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    .line 14128
    :cond_53
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14129
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setAlbumOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    goto :goto_0

    .line 14133
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    :sswitch_5e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14134
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto :goto_0

    .line 14138
    :sswitch_6b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    .line 14139
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14140
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->addAlbumsToFetch(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    goto :goto_0

    .line 14092
    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_5e
        0x3a -> :sswitch_6b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 14050
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14079
    :cond_6
    :goto_6
    return-object p0

    .line 14051
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14052
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 14054
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 14055
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 14057
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->hasMaxAlbumCount()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 14058
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getMaxAlbumCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setMaxAlbumCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 14060
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->hasContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 14061
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getContinuationToken()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setContinuationToken(I)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 14063
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->hasSharedAlbumsOnly()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 14064
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getSharedAlbumsOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setSharedAlbumsOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 14066
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->hasAlbumOptions()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 14067
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getAlbumOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->mergeAlbumOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 14069
    :cond_55
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18700(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14070
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 14071
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18700(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    .line 14072
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 14074
    :cond_74
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14075
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18700(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setAlbumOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 14288
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14290
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14291
    return-object p0
.end method

.method public setAlbumOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14278
    if-nez p1, :cond_8

    .line 14279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14281
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14283
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14284
    return-object p0
.end method

.method public setAlbumsToFetch(ILcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 14343
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14344
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14346
    return-object p0
.end method

.method public setAlbumsToFetch(ILcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14333
    if-nez p2, :cond_8

    .line 14334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14336
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14337
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14339
    return-object p0
.end method

.method public setContinuationToken(I)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14236
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14237
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->continuationToken_:I

    .line 14239
    return-object p0
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14186
    if-nez p1, :cond_8

    .line 14187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14189
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14190
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14192
    return-object p0
.end method

.method public setMaxAlbumCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14215
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14216
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maxAlbumCount_:I

    .line 14218
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14158
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14159
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ownerGaiaId_:J

    .line 14161
    return-object p0
.end method

.method public setSharedAlbumsOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14257
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14258
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->sharedAlbumsOnly_:Z

    .line 14260
    return-object p0
.end method
