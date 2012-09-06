.class public final Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private albumLabel_:Ljava/lang/Object;

.field private albumTitle_:Ljava/lang/Object;

.field private bitField0_:I

.field private mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

.field private returnAlbumInfo_:Z

.field private streamId_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 45365
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 45530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    .line 45566
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    .line 45602
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 45645
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 45366
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->maybeForceBuilderInitialization()V

    .line 45367
    return-void
.end method

.method static synthetic access$63000()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 1

    .prologue
    .line 45360
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 1

    .prologue
    .line 45372
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureStreamIdIsMutable()V
    .registers 3

    .prologue
    .line 45647
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 45648
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 45649
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45651
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 45370
    return-void
.end method


# virtual methods
.method public addAllStreamId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 45683
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->ensureStreamIdIsMutable()V

    .line 45684
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 45686
    return-object p0
.end method

.method public addStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45673
    if-nez p1, :cond_8

    .line 45674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45676
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->ensureStreamIdIsMutable()V

    .line 45677
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 45679
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    .registers 3

    .prologue
    .line 45399
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    .line 45400
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 45401
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 45403
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    .registers 6

    .prologue
    .line 45417
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 45418
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45419
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 45420
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 45421
    or-int/lit8 v2, v2, 0x1

    .line 45423
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$63202(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45424
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 45425
    or-int/lit8 v2, v2, 0x2

    .line 45427
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$63302(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45428
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 45429
    or-int/lit8 v2, v2, 0x4

    .line 45431
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$63402(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 45432
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 45433
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 45435
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45437
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$63502(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 45438
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_51

    .line 45439
    or-int/lit8 v2, v2, 0x8

    .line 45441
    :cond_51
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->returnAlbumInfo_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->returnAlbumInfo_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$63602(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Z)Z

    .line 45442
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$63702(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;I)I

    .line 45443
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 45360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 45376
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 45377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    .line 45378
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    .line 45380
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45381
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 45382
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45383
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 45384
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->returnAlbumInfo_:Z

    .line 45386
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45387
    return-object p0
.end method

.method public clearAlbumLabel()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 45590
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45591
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    .line 45593
    return-object p0
.end method

.method public clearAlbumTitle()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 45554
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45555
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    .line 45557
    return-object p0
.end method

.method public clearMediaRef()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 45638
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 45640
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45641
    return-object p0
.end method

.method public clearReturnAlbumInfo()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 45715
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->returnAlbumInfo_:Z

    .line 45718
    return-object p0
.end method

.method public clearStreamId()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 45689
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 45690
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45692
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 45360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 45360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3

    .prologue
    .line 45391
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

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
    .line 45360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 45571
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    .line 45572
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 45573
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 45574
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    .line 45577
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

.method public getAlbumTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 45535
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    .line 45536
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 45537
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 45538
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    .line 45541
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 45360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    .registers 2

    .prologue
    .line 45395
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMediaRef()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 2

    .prologue
    .line 45607
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object v0
.end method

.method public getReturnAlbumInfo()Z
    .registers 2

    .prologue
    .line 45706
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->returnAlbumInfo_:Z

    return v0
.end method

.method public getStreamId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 45660
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStreamIdCount()I
    .registers 2

    .prologue
    .line 45657
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getStreamIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45654
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbumLabel()Z
    .registers 3

    .prologue
    .line 45568
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

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

.method public hasAlbumTitle()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45532
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMediaRef()Z
    .registers 3

    .prologue
    .line 45604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

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

.method public hasReturnAlbumInfo()Z
    .registers 3

    .prologue
    .line 45703
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

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
    .line 45474
    const/4 v0, 0x1

    return v0
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
    .line 45360
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45360
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

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
    .line 45360
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45482
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 45483
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_5e

    .line 45488
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45490
    :sswitch_d
    return-object p0

    .line 45495
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45496
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    goto :goto_0

    .line 45500
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45501
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    goto :goto_0

    .line 45505
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    .line 45506
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->hasMediaRef()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 45507
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->getMediaRef()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 45509
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 45510
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->setMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    goto :goto_0

    .line 45514
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    :sswitch_44
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->ensureStreamIdIsMutable()V

    .line 45515
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 45519
    :sswitch_51
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45520
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->returnAlbumInfo_:Z

    goto :goto_0

    .line 45483
    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_44
        0x28 -> :sswitch_51
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 45447
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 45470
    :cond_6
    :goto_6
    return-object p0

    .line 45448
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->hasAlbumTitle()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 45449
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->setAlbumTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    .line 45451
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->hasAlbumLabel()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 45452
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->setAlbumLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    .line 45454
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->hasMediaRef()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 45455
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getMediaRef()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mergeMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    .line 45457
    :cond_2e
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$63500(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 45458
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 45459
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$63500(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 45460
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45467
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->hasReturnAlbumInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45468
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getReturnAlbumInfo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->setReturnAlbumInfo(Z)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    goto :goto_6

    .line 45462
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->ensureStreamIdIsMutable()V

    .line 45463
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$63500(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4c
.end method

.method public mergeMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 45626
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 45628
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 45634
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45635
    return-object p0

    .line 45631
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    goto :goto_1f
.end method

.method public setAlbumLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45581
    if-nez p1, :cond_8

    .line 45582
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45584
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45585
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    .line 45587
    return-object p0
.end method

.method public setAlbumTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45545
    if-nez p1, :cond_8

    .line 45546
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45548
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45549
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    .line 45551
    return-object p0
.end method

.method public setMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 45620
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 45622
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45623
    return-object p0
.end method

.method public setMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45610
    if-nez p1, :cond_8

    .line 45611
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45613
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 45615
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45616
    return-object p0
.end method

.method public setReturnAlbumInfo(Z)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45709
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 45710
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->returnAlbumInfo_:Z

    .line 45712
    return-object p0
.end method

.method public setStreamId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 45664
    if-nez p2, :cond_8

    .line 45665
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45667
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->ensureStreamIdIsMutable()V

    .line 45668
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45670
    return-object p0
.end method
