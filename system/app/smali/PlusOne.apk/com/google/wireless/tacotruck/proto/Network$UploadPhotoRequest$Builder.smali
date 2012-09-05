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

.field private streamId_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 44402
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 44553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    .line 44589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    .line 44625
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44668
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 44403
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->maybeForceBuilderInitialization()V

    .line 44404
    return-void
.end method

.method static synthetic access$61800()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 1

    .prologue
    .line 44397
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 1

    .prologue
    .line 44409
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureStreamIdIsMutable()V
    .registers 3

    .prologue
    .line 44670
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 44671
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 44672
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44674
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 44407
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
    .line 44706
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->ensureStreamIdIsMutable()V

    .line 44707
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 44709
    return-object p0
.end method

.method public addStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44696
    if-nez p1, :cond_8

    .line 44697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44699
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->ensureStreamIdIsMutable()V

    .line 44700
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 44702
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    .registers 3

    .prologue
    .line 44434
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    .line 44435
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 44436
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 44438
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44397
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    .registers 6

    .prologue
    .line 44452
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 44453
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44454
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 44455
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 44456
    or-int/lit8 v2, v2, 0x1

    .line 44458
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumTitle_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$62002(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44459
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 44460
    or-int/lit8 v2, v2, 0x2

    .line 44462
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->albumLabel_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$62102(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44463
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 44464
    or-int/lit8 v2, v2, 0x4

    .line 44466
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$62202(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44467
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 44468
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 44470
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44472
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$62302(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 44473
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$62402(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;I)I

    .line 44474
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44397
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44397
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 44413
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 44414
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    .line 44415
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    .line 44417
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44418
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44419
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44420
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 44421
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44422
    return-object p0
.end method

.method public clearAlbumLabel()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 44613
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44614
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    .line 44616
    return-object p0
.end method

.method public clearAlbumTitle()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 44577
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44578
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    .line 44580
    return-object p0
.end method

.method public clearMediaRef()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 44661
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44663
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44664
    return-object p0
.end method

.method public clearStreamId()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 44712
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 44713
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44715
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 44397
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44397
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3

    .prologue
    .line 44426
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
    .line 44397
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 44594
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    .line 44595
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 44596
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 44597
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    .line 44600
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
    .line 44558
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    .line 44559
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 44560
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 44561
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    .line 44564
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
    .line 44397
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44397
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;
    .registers 2

    .prologue
    .line 44430
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMediaRef()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 2

    .prologue
    .line 44630
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object v0
.end method

.method public getStreamId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 44683
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStreamIdCount()I
    .registers 2

    .prologue
    .line 44680
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
    .line 44677
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbumLabel()Z
    .registers 3

    .prologue
    .line 44591
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

    .line 44555
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
    .line 44627
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
    .line 44397
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

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
    .line 44397
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
    .line 44510
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 44511
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_52

    .line 44516
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44518
    :sswitch_d
    return-object p0

    .line 44523
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44524
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    goto :goto_0

    .line 44528
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44529
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    goto :goto_0

    .line 44533
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    .line 44534
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->hasMediaRef()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 44535
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->getMediaRef()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 44537
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 44538
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->setMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    goto :goto_0

    .line 44542
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    :sswitch_44
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->ensureStreamIdIsMutable()V

    .line 44543
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 44511
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 44478
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 44498
    :cond_6
    :goto_6
    return-object p0

    .line 44479
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->hasAlbumTitle()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 44480
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->setAlbumTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    .line 44482
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->hasAlbumLabel()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 44483
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getAlbumLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->setAlbumLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    .line 44485
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->hasMediaRef()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 44486
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->getMediaRef()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mergeMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;

    .line 44488
    :cond_2e
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$62300(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 44489
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 44490
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$62300(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    .line 44491
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 44493
    :cond_4d
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->ensureStreamIdIsMutable()V

    .line 44494
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->streamId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;->access$62300(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 44649
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 44651
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44657
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44658
    return-object p0

    .line 44654
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    goto :goto_1f
.end method

.method public setAlbumLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44604
    if-nez p1, :cond_8

    .line 44605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44607
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44608
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumLabel_:Ljava/lang/Object;

    .line 44610
    return-object p0
.end method

.method public setAlbumTitle(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44568
    if-nez p1, :cond_8

    .line 44569
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44571
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44572
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->albumTitle_:Ljava/lang/Object;

    .line 44574
    return-object p0
.end method

.method public setMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 44643
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44645
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44646
    return-object p0
.end method

.method public setMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44633
    if-nez p1, :cond_8

    .line 44634
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44636
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44638
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->bitField0_:I

    .line 44639
    return-object p0
.end method

.method public setStreamId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 44687
    if-nez p2, :cond_8

    .line 44688
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44690
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->ensureStreamIdIsMutable()V

    .line 44691
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequest$Builder;->streamId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 44693
    return-object p0
.end method
