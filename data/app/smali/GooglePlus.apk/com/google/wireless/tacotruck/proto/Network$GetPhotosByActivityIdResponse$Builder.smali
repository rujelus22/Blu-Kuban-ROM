.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponseOrBuilder;"
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
    .line 43536
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 43671
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    .line 43760
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 43537
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->maybeForceBuilderInitialization()V

    .line 43538
    return-void
.end method

.method static synthetic access$60300(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43531
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$60400()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 1

    .prologue
    .line 43531
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43573
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    move-result-object v0

    .line 43574
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 43575
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 43578
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 1

    .prologue
    .line 43543
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhotoIsMutable()V
    .registers 3

    .prologue
    .line 43674
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 43675
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    .line 43676
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    .line 43678
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 43541
    return-void
.end method


# virtual methods
.method public addAllPhoto(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 43741
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->ensurePhotoIsMutable()V

    .line 43742
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 43744
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 43734
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->ensurePhotoIsMutable()V

    .line 43735
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 43737
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 43717
    if-nez p2, :cond_8

    .line 43718
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43720
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->ensurePhotoIsMutable()V

    .line 43721
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 43723
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 43727
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->ensurePhotoIsMutable()V

    .line 43728
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43730
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43707
    if-nez p1, :cond_8

    .line 43708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43710
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->ensurePhotoIsMutable()V

    .line 43711
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43713
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43531
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;
    .registers 3

    .prologue
    .line 43564
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    move-result-object v0

    .line 43565
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 43566
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 43568
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43531
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;
    .registers 6

    .prologue
    .line 43582
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 43583
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    .line 43584
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 43585
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 43586
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    .line 43587
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    .line 43589
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->photo_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->access$60602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;Ljava/util/List;)Ljava/util/List;

    .line 43590
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 43591
    or-int/lit8 v2, v2, 0x1

    .line 43593
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->access$60702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 43594
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->access$60802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;I)I

    .line 43595
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43531
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43531
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 2

    .prologue
    .line 43547
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 43548
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    .line 43549
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    .line 43550
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 43551
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    .line 43552
    return-object p0
.end method

.method public clearAlbumInfo()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 2

    .prologue
    .line 43796
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 43798
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    .line 43799
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 2

    .prologue
    .line 43747
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    .line 43748
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    .line 43750
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 43531
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43531
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 3

    .prologue
    .line 43556
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

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
    .line 43531
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 43765
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 43531
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43531
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;
    .registers 2

    .prologue
    .line 43560
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 43687
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 43684
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

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
    .line 43681
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbumInfo()Z
    .registers 3

    .prologue
    .line 43762
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

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

    .line 43617
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->getPhotoCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 43618
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 43629
    :cond_12
    :goto_12
    return v1

    .line 43617
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 43623
    :cond_16
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->hasAlbumInfo()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 43624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 43629
    :cond_26
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 43784
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 43786
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 43792
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    .line 43793
    return-object p0

    .line 43789
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

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
    .line 43531
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43531
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

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
    .line 43531
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43637
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 43638
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3a

    .line 43643
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43645
    :sswitch_d
    return-object p0

    .line 43650
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 43651
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 43652
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    goto :goto_0

    .line 43656
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    .line 43657
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->hasAlbumInfo()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 43658
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 43660
    :cond_2e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 43661
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->setAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    goto :goto_0

    .line 43638
    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 43599
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 43613
    :cond_6
    :goto_6
    return-object p0

    .line 43600
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->access$60600(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 43601
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 43602
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->access$60600(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    .line 43603
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    .line 43610
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->hasAlbumInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43611
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->mergeAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;

    goto :goto_6

    .line 43605
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->ensurePhotoIsMutable()V

    .line 43606
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;->access$60600(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 43778
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 43780
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    .line 43781
    return-object p0
.end method

.method public setAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43768
    if-nez p1, :cond_8

    .line 43769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43771
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 43773
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->bitField0_:I

    .line 43774
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 43701
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->ensurePhotoIsMutable()V

    .line 43702
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43704
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 43691
    if-nez p2, :cond_8

    .line 43692
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43694
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->ensurePhotoIsMutable()V

    .line 43695
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43697
    return-object p0
.end method
