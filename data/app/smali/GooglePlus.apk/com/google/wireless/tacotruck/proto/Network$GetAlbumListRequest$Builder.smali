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
    .line 14508
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14722
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14821
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14864
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    .line 14509
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maybeForceBuilderInitialization()V

    .line 14510
    return-void
.end method

.method static synthetic access$18500()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 1

    .prologue
    .line 14503
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 1

    .prologue
    .line 14515
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAlbumsToFetchIsMutable()V
    .registers 3

    .prologue
    .line 14867
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 14868
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    .line 14869
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14871
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14513
    return-void
.end method


# virtual methods
.method public addAlbumsToFetch(ILcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 14927
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14928
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14930
    return-object p0
.end method

.method public addAlbumsToFetch(ILcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14910
    if-nez p2, :cond_8

    .line 14911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14913
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14914
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14916
    return-object p0
.end method

.method public addAlbumsToFetch(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 14920
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14921
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14923
    return-object p0
.end method

.method public addAlbumsToFetch(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14900
    if-nez p1, :cond_8

    .line 14901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14903
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14904
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14906
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
    .line 14934
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14935
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14937
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14503
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    .registers 3

    .prologue
    .line 14546
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    .line 14547
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 14548
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14550
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14503
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    .registers 6

    .prologue
    .line 14564
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 14565
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14566
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14567
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 14568
    or-int/lit8 v2, v2, 0x1

    .line 14570
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18702(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;J)J

    .line 14571
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 14572
    or-int/lit8 v2, v2, 0x2

    .line 14574
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18802(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14575
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 14576
    or-int/lit8 v2, v2, 0x4

    .line 14578
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maxAlbumCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->maxAlbumCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$18902(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;I)I

    .line 14579
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 14580
    or-int/lit8 v2, v2, 0x8

    .line 14582
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->continuationToken_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->continuationToken_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$19002(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;I)I

    .line 14583
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 14584
    or-int/lit8 v2, v2, 0x10

    .line 14586
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->sharedAlbumsOnly_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->sharedAlbumsOnly_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$19102(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Z)Z

    .line 14587
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 14588
    or-int/lit8 v2, v2, 0x20

    .line 14590
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$19202(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14591
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 14592
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    .line 14593
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14595
    :cond_6a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$19302(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;Ljava/util/List;)Ljava/util/List;

    .line 14596
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$19402(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;I)I

    .line 14597
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14503
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14503
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 14519
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14520
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ownerGaiaId_:J

    .line 14521
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14522
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14523
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14524
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maxAlbumCount_:I

    .line 14525
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14526
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->continuationToken_:I

    .line 14527
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14528
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->sharedAlbumsOnly_:Z

    .line 14529
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14530
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14531
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14532
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    .line 14533
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14534
    return-object p0
.end method

.method public clearAlbumOptions()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14857
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14859
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14860
    return-object p0
.end method

.method public clearAlbumsToFetch()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14940
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    .line 14941
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14943
    return-object p0
.end method

.method public clearContinuationToken()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14793
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14794
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->continuationToken_:I

    .line 14796
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14746
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14747
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14749
    return-object p0
.end method

.method public clearMaxAlbumCount()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14772
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14773
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maxAlbumCount_:I

    .line 14775
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3

    .prologue
    .line 14715
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14716
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ownerGaiaId_:J

    .line 14718
    return-object p0
.end method

.method public clearSharedAlbumsOnly()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 2

    .prologue
    .line 14814
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->sharedAlbumsOnly_:Z

    .line 14817
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14503
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14503
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3

    .prologue
    .line 14538
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
    .line 14503
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    .registers 2

    .prologue
    .line 14826
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    return-object v0
.end method

.method public getAlbumsToFetch(I)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 3
    .parameter "index"

    .prologue
    .line 14880
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object v0
.end method

.method public getAlbumsToFetchCount()I
    .registers 2

    .prologue
    .line 14877
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
    .line 14874
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContinuationToken()I
    .registers 2

    .prologue
    .line 14784
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->continuationToken_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14503
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14503
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;
    .registers 2

    .prologue
    .line 14542
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14727
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14728
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14729
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14730
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14733
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
    .line 14763
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maxAlbumCount_:I

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 14706
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getSharedAlbumsOnly()Z
    .registers 2

    .prologue
    .line 14805
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->sharedAlbumsOnly_:Z

    return v0
.end method

.method public hasAlbumOptions()Z
    .registers 3

    .prologue
    .line 14823
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
    .line 14781
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
    .line 14724
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
    .line 14760
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

    .line 14703
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
    .line 14802
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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 14634
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAlbumOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14845
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 14847
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14853
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14854
    return-object p0

    .line 14850
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
    .line 14503
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 14503
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

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
    .line 14503
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
    .line 14642
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 14643
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_7a

    .line 14648
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14650
    :sswitch_d
    return-object p0

    .line 14655
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14656
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 14660
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14661
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maxAlbumCount_:I

    goto :goto_0

    .line 14665
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14666
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->continuationToken_:I

    goto :goto_0

    .line 14670
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14671
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->sharedAlbumsOnly_:Z

    goto :goto_0

    .line 14675
    :sswitch_42
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    .line 14676
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->hasAlbumOptions()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 14677
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->getAlbumOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    .line 14679
    :cond_53
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14680
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setAlbumOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    goto :goto_0

    .line 14684
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    :sswitch_5e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14685
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto :goto_0

    .line 14689
    :sswitch_6b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    .line 14690
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 14691
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->addAlbumsToFetch(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    goto :goto_0

    .line 14643
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
    .line 14601
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14630
    :cond_6
    :goto_6
    return-object p0

    .line 14602
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14603
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 14605
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 14606
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 14608
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->hasMaxAlbumCount()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 14609
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getMaxAlbumCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setMaxAlbumCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 14611
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->hasContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 14612
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getContinuationToken()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setContinuationToken(I)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 14614
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->hasSharedAlbumsOnly()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 14615
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getSharedAlbumsOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->setSharedAlbumsOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 14617
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->hasAlbumOptions()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 14618
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->getAlbumOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->mergeAlbumOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;

    .line 14620
    :cond_55
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$19300(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14621
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 14622
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$19300(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    .line 14623
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 14625
    :cond_74
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14626
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->albumsToFetch_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;->access$19300(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setAlbumOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 14839
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14841
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14842
    return-object p0
.end method

.method public setAlbumOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14829
    if-nez p1, :cond_8

    .line 14830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14832
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 14834
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14835
    return-object p0
.end method

.method public setAlbumsToFetch(ILcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 14894
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14895
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14897
    return-object p0
.end method

.method public setAlbumsToFetch(ILcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14884
    if-nez p2, :cond_8

    .line 14885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14887
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ensureAlbumsToFetchIsMutable()V

    .line 14888
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->albumsToFetch_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14890
    return-object p0
.end method

.method public setContinuationToken(I)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14787
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14788
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->continuationToken_:I

    .line 14790
    return-object p0
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14737
    if-nez p1, :cond_8

    .line 14738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14740
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14741
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14743
    return-object p0
.end method

.method public setMaxAlbumCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14766
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14767
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->maxAlbumCount_:I

    .line 14769
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14709
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14710
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->ownerGaiaId_:J

    .line 14712
    return-object p0
.end method

.method public setSharedAlbumsOnly(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14808
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->bitField0_:I

    .line 14809
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequest$Builder;->sharedAlbumsOnly_:Z

    .line 14811
    return-object p0
.end method
