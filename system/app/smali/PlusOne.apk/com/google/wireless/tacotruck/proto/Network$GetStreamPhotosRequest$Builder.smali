.class public final Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private ifModifiedSince_:J

.field private maxPhotoCount_:I

.field private offset_:I

.field private ownerGaiaId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnComments_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z

.field private sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

.field private streamId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28303
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 28568
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 28604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    .line 28745
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->TIMESTAMP:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 28790
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 28304
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maybeForceBuilderInitialization()V

    .line 28305
    return-void
.end method

.method static synthetic access$38700()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 1

    .prologue
    .line 28298
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 1

    .prologue
    .line 28310
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 28308
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    .registers 3

    .prologue
    .line 28349
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    .line 28350
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28351
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28353
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    .registers 6

    .prologue
    .line 28367
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 28368
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28369
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 28370
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28371
    or-int/lit8 v2, v2, 0x1

    .line 28373
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$38902(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;J)J

    .line 28374
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 28375
    or-int/lit8 v2, v2, 0x2

    .line 28377
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39002(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28378
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 28379
    or-int/lit8 v2, v2, 0x4

    .line 28381
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39102(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28382
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 28383
    or-int/lit8 v2, v2, 0x8

    .line 28385
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnUrls_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnUrls_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39202(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Z)Z

    .line 28386
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 28387
    or-int/lit8 v2, v2, 0x10

    .line 28389
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39302(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Z)Z

    .line 28390
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 28391
    or-int/lit8 v2, v2, 0x20

    .line 28393
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39402(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Z)Z

    .line 28394
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 28395
    or-int/lit8 v2, v2, 0x40

    .line 28397
    :cond_5c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maxPhotoCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->maxPhotoCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39502(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;I)I

    .line 28398
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 28399
    or-int/lit16 v2, v2, 0x80

    .line 28401
    :cond_69
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->offset_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->offset_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39602(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;I)I

    .line 28402
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 28403
    or-int/lit16 v2, v2, 0x100

    .line 28405
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39702(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 28406
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 28407
    or-int/lit16 v2, v2, 0x200

    .line 28409
    :cond_83
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ifModifiedSince_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ifModifiedSince_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39802(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;J)J

    .line 28410
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 28411
    or-int/lit16 v2, v2, 0x400

    .line 28413
    :cond_90
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$39902(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 28414
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->access$40002(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;I)I

    .line 28415
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 28314
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28315
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ownerGaiaId_:J

    .line 28316
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 28318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    .line 28320
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28321
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnUrls_:Z

    .line 28322
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28323
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnComments_:Z

    .line 28324
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28325
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnShapes_:Z

    .line 28326
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28327
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maxPhotoCount_:I

    .line 28328
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28329
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->offset_:I

    .line 28330
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28331
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->TIMESTAMP:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 28332
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28333
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ifModifiedSince_:J

    .line 28334
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28335
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 28336
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28337
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 28592
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28593
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 28595
    return-object p0
.end method

.method public clearIfModifiedSince()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3

    .prologue
    .line 28783
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28784
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ifModifiedSince_:J

    .line 28786
    return-object p0
.end method

.method public clearMaxPhotoCount()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 28717
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28718
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maxPhotoCount_:I

    .line 28720
    return-object p0
.end method

.method public clearOffset()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 28738
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28739
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->offset_:I

    .line 28741
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3

    .prologue
    .line 28561
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28562
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ownerGaiaId_:J

    .line 28564
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 28826
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 28828
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28829
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28675
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnComments_:Z

    .line 28678
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28696
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnShapes_:Z

    .line 28699
    return-object p0
.end method

.method public clearReturnUrls()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28654
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnUrls_:Z

    .line 28657
    return-object p0
.end method

.method public clearSortBy()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 28762
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28763
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->TIMESTAMP:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 28765
    return-object p0
.end method

.method public clearStreamId()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 28628
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28629
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    .line 28631
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3

    .prologue
    .line 28341
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

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
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    .registers 2

    .prologue
    .line 28345
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28573
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 28574
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28575
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28576
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 28579
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

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 28774
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ifModifiedSince_:J

    return-wide v0
.end method

.method public getMaxPhotoCount()I
    .registers 2

    .prologue
    .line 28708
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maxPhotoCount_:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 28729
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->offset_:I

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 28552
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 28795
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28666
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28687
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28645
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnUrls_:Z

    return v0
.end method

.method public getSortBy()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    .registers 2

    .prologue
    .line 28750
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28609
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    .line 28610
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28611
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28612
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    .line 28615
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

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 28570
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasIfModifiedSince()Z
    .registers 3

    .prologue
    .line 28771
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasMaxPhotoCount()Z
    .registers 3

    .prologue
    .line 28705
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 28726
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28549
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 28792
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28663
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28684
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasReturnUrls()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28642
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasSortBy()Z
    .registers 3

    .prologue
    .line 28747
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    .line 28606
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

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
    .line 28298
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

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
    .line 28298
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28465
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 28466
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_b6

    .line 28471
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 28473
    :sswitch_d
    return-object p0

    .line 28478
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28479
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 28483
    :sswitch_1b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28484
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    goto :goto_0

    .line 28488
    :sswitch_28
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28489
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnUrls_:Z

    goto :goto_0

    .line 28493
    :sswitch_35
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28494
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnComments_:Z

    goto :goto_0

    .line 28498
    :sswitch_42
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28499
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnShapes_:Z

    goto :goto_0

    .line 28503
    :sswitch_4f
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28504
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maxPhotoCount_:I

    goto :goto_0

    .line 28508
    :sswitch_5c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28509
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->offset_:I

    goto :goto_0

    .line 28513
    :sswitch_69
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 28514
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    move-result-object v3

    .line 28515
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    if-eqz v3, :cond_0

    .line 28516
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28517
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    goto :goto_0

    .line 28522
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    :sswitch_7c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28523
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ifModifiedSince_:J

    goto/16 :goto_0

    .line 28527
    :sswitch_8a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v1

    .line 28528
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->hasPhotoOptions()Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 28529
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 28531
    :cond_9b
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28532
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    goto/16 :goto_0

    .line 28536
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    :sswitch_a7
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28537
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 28466
    nop

    :sswitch_data_b6
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
        0x38 -> :sswitch_5c
        0x40 -> :sswitch_69
        0x48 -> :sswitch_7c
        0x52 -> :sswitch_8a
        0x5a -> :sswitch_a7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 28419
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28453
    :cond_6
    :goto_6
    return-object p0

    .line 28420
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28421
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 28423
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 28424
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 28426
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasStreamId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 28427
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 28429
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasReturnUrls()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 28430
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getReturnUrls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 28432
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 28433
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 28435
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 28436
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 28438
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasMaxPhotoCount()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 28439
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getMaxPhotoCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 28441
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasOffset()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 28442
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 28444
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasSortBy()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 28445
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getSortBy()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setSortBy(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 28447
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasIfModifiedSince()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 28448
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getIfModifiedSince()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->setIfModifiedSince(J)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    .line 28450
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28451
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    goto/16 :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 28814
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 28816
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 28822
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28823
    return-object p0

    .line 28819
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28583
    if-nez p1, :cond_8

    .line 28584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28586
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28587
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 28589
    return-object p0
.end method

.method public setIfModifiedSince(J)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 28777
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28778
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ifModifiedSince_:J

    .line 28780
    return-object p0
.end method

.method public setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28711
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28712
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->maxPhotoCount_:I

    .line 28714
    return-object p0
.end method

.method public setOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28732
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28733
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->offset_:I

    .line 28735
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 28555
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28556
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->ownerGaiaId_:J

    .line 28558
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 28808
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 28810
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28811
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28798
    if-nez p1, :cond_8

    .line 28799
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28801
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 28803
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28804
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28669
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28670
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnComments_:Z

    .line 28672
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28690
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28691
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnShapes_:Z

    .line 28693
    return-object p0
.end method

.method public setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28648
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28649
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->returnUrls_:Z

    .line 28651
    return-object p0
.end method

.method public setSortBy(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28753
    if-nez p1, :cond_8

    .line 28754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28756
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28757
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 28759
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28619
    if-nez p1, :cond_8

    .line 28620
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28622
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->bitField0_:I

    .line 28623
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->streamId_:Ljava/lang/Object;

    .line 28625
    return-object p0
.end method
