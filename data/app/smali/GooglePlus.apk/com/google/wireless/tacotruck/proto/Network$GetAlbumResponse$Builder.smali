.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

.field private bitField0_:I

.field private photo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16410
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16545
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    .line 16634
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16411
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->maybeForceBuilderInitialization()V

    .line 16412
    return-void
.end method

.method static synthetic access$21400(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16405
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21500()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 1

    .prologue
    .line 16405
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16447
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    .line 16448
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 16449
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 16452
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 1

    .prologue
    .line 16417
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhotoIsMutable()V
    .registers 3

    .prologue
    .line 16548
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 16549
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    .line 16550
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16552
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 16415
    return-void
.end method


# virtual methods
.method public addAllPhoto(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 16615
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 16616
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16618
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 16608
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 16609
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16611
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 16591
    if-nez p2, :cond_8

    .line 16592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16594
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 16595
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16597
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 16601
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 16602
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16604
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16581
    if-nez p1, :cond_8

    .line 16582
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16584
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 16585
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16587
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16405
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    .registers 3

    .prologue
    .line 16438
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    .line 16439
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16440
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 16442
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16405
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    .registers 6

    .prologue
    .line 16456
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 16457
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16458
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 16459
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 16460
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    .line 16461
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16463
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->access$21702(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;Ljava/util/List;)Ljava/util/List;

    .line 16464
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 16465
    or-int/lit8 v2, v2, 0x1

    .line 16467
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->access$21802(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16468
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->access$21902(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;I)I

    .line 16469
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16405
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16405
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 16421
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16422
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    .line 16423
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16424
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16425
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16426
    return-object p0
.end method

.method public clearAlbumInfo()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 16670
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16672
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16673
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 16621
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    .line 16622
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16624
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 16405
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16405
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 3

    .prologue
    .line 16430
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

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
    .line 16405
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 16639
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 16405
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16405
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    .registers 2

    .prologue
    .line 16434
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 16561
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 16558
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoList()Ljava/util/List;
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
    .line 16555
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbumInfo()Z
    .registers 3

    .prologue
    .line 16636
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 16491
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->getPhotoCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 16492
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 16503
    :cond_12
    :goto_12
    return v1

    .line 16491
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 16497
    :cond_16
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->hasAlbumInfo()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 16498
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 16503
    :cond_26
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 16658
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 16660
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16666
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16667
    return-object p0

    .line 16663
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    goto :goto_1f
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
    .line 16405
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 16405
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

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
    .line 16405
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16511
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 16512
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3a

    .line 16517
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16519
    :sswitch_d
    return-object p0

    .line 16524
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 16525
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16526
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    goto :goto_0

    .line 16530
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    .line 16531
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->hasAlbumInfo()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 16532
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 16534
    :cond_2e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16535
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->setAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    goto :goto_0

    .line 16512
    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 16473
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 16487
    :cond_6
    :goto_6
    return-object p0

    .line 16474
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->access$21700(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 16475
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 16476
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->access$21700(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    .line 16477
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16484
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->hasAlbumInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16485
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->mergeAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    goto :goto_6

    .line 16479
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 16480
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->access$21700(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 16652
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16654
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16655
    return-object p0
.end method

.method public setAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16642
    if-nez p1, :cond_8

    .line 16643
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16645
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16647
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16648
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 16575
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 16576
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16578
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 16565
    if-nez p2, :cond_8

    .line 16566
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16568
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 16569
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16571
    return-object p0
.end method
