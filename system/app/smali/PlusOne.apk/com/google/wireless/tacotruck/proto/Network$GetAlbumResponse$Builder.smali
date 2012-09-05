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
    .line 15802
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15937
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    .line 16026
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 15803
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->maybeForceBuilderInitialization()V

    .line 15804
    return-void
.end method

.method static synthetic access$20700(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15797
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20800()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 1

    .prologue
    .line 15797
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
    .line 15839
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    .line 15840
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 15841
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 15844
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 1

    .prologue
    .line 15809
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhotoIsMutable()V
    .registers 3

    .prologue
    .line 15940
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 15941
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    .line 15942
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 15944
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15807
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
    .line 16007
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 16008
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16010
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 16000
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 16001
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16003
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15983
    if-nez p2, :cond_8

    .line 15984
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15986
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 15987
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15989
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 15993
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 15994
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15996
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15973
    if-nez p1, :cond_8

    .line 15974
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15976
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 15977
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15979
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    .registers 6

    .prologue
    .line 15848
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 15849
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 15850
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15851
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 15852
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    .line 15853
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 15855
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->access$21002(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;Ljava/util/List;)Ljava/util/List;

    .line 15856
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 15857
    or-int/lit8 v2, v2, 0x1

    .line 15859
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->access$21102(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 15860
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->access$21202(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;I)I

    .line 15861
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 15813
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15814
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    .line 15815
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 15816
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 15817
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 15818
    return-object p0
.end method

.method public clearAlbumInfo()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 16062
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16064
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16065
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 16013
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    .line 16014
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16016
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 3

    .prologue
    .line 15822
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
    .line 15797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 16031
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;
    .registers 2

    .prologue
    .line 15826
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 15953
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 15950
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
    .line 15947
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbumInfo()Z
    .registers 3

    .prologue
    .line 16028
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

.method public mergeAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 16050
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 16052
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16058
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16059
    return-object p0

    .line 16055
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
    .line 15797
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

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
    .line 15797
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
    .line 15903
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 15904
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3a

    .line 15909
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15911
    :sswitch_d
    return-object p0

    .line 15916
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 15917
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15918
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    goto :goto_0

    .line 15922
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    move-result-object v0

    .line 15923
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->hasAlbumInfo()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 15924
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;

    .line 15926
    :cond_2e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15927
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->setAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    goto :goto_0

    .line 15904
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
    .line 15865
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15879
    :cond_6
    :goto_6
    return-object p0

    .line 15866
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->access$21000(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 15867
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 15868
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->access$21000(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    .line 15869
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 15876
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->hasAlbumInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15877
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->getAlbumInfo()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->mergeAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;

    goto :goto_6

    .line 15871
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 15872
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;->access$21000(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 16044
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16046
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16047
    return-object p0
.end method

.method public setAlbumInfo(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16034
    if-nez p1, :cond_8

    .line 16035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16037
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->albumInfo_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 16039
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->bitField0_:I

    .line 16040
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15967
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 15968
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15970
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15957
    if-nez p2, :cond_8

    .line 15958
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15960
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->ensurePhotoIsMutable()V

    .line 15961
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15963
    return-object p0
.end method
