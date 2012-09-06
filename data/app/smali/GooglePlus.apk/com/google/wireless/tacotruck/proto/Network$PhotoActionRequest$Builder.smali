.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private albumId_:J

.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private ownerGaiaId_:J

.field private photoId_:J

.field private shapeId_:J

.field private subjectGaiaId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

.field private userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41308
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 41530
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 41575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 41632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 41689
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    .line 41746
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 41309
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->maybeForceBuilderInitialization()V

    .line 41310
    return-void
.end method

.method static synthetic access$56700()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 1

    .prologue
    .line 41303
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 1

    .prologue
    .line 41315
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 41313
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41303
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    .registers 3

    .prologue
    .line 41350
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    .line 41351
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 41352
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 41354
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41303
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    .registers 6

    .prologue
    .line 41368
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 41369
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41370
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 41371
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 41372
    or-int/lit8 v2, v2, 0x1

    .line 41374
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$56902(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 41375
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 41376
    or-int/lit8 v2, v2, 0x2

    .line 41378
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$57002(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J

    .line 41379
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 41380
    or-int/lit8 v2, v2, 0x4

    .line 41382
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$57102(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41383
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 41384
    or-int/lit8 v2, v2, 0x8

    .line 41386
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->photoId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->photoId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$57202(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J

    .line 41387
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 41388
    or-int/lit8 v2, v2, 0x10

    .line 41390
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$57302(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41391
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 41392
    or-int/lit8 v2, v2, 0x20

    .line 41394
    :cond_4f
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->albumId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->albumId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$57402(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J

    .line 41395
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 41396
    or-int/lit8 v2, v2, 0x40

    .line 41398
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$57502(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41399
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 41400
    or-int/lit16 v2, v2, 0x80

    .line 41402
    :cond_69
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->shapeId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->shapeId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$57602(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J

    .line 41403
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 41404
    or-int/lit16 v2, v2, 0x100

    .line 41406
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$57702(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 41407
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$57802(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;I)I

    .line 41408
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41303
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41303
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 41319
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 41320
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 41321
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41322
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->ownerGaiaId_:J

    .line 41323
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41324
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 41325
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41326
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->photoId_:J

    .line 41327
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 41329
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41330
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->albumId_:J

    .line 41331
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41332
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    .line 41333
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41334
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->shapeId_:J

    .line 41335
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41336
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 41337
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41338
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2

    .prologue
    .line 41656
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41657
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 41659
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3

    .prologue
    .line 41682
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41683
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->albumId_:J

    .line 41685
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2

    .prologue
    .line 41599
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41600
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 41602
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3

    .prologue
    .line 41568
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41569
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->ownerGaiaId_:J

    .line 41571
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3

    .prologue
    .line 41625
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41626
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->photoId_:J

    .line 41628
    return-object p0
.end method

.method public clearShapeId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3

    .prologue
    .line 41739
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41740
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->shapeId_:J

    .line 41742
    return-object p0
.end method

.method public clearSubjectGaiaId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2

    .prologue
    .line 41713
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41714
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getSubjectGaiaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    .line 41716
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2

    .prologue
    .line 41547
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41548
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 41550
    return-object p0
.end method

.method public clearUserShape()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2

    .prologue
    .line 41782
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 41784
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41785
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 41303
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41303
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3

    .prologue
    .line 41342
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

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
    .line 41303
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41637
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 41638
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41639
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41640
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 41643
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

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 41673
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 41303
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41303
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    .registers 2

    .prologue
    .line 41346
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41580
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 41581
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41582
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41583
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 41586
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

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 41559
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 41616
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->photoId_:J

    return-wide v0
.end method

.method public getShapeId()J
    .registers 3

    .prologue
    .line 41730
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->shapeId_:J

    return-wide v0
.end method

.method public getSubjectGaiaId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41694
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    .line 41695
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41696
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41697
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    .line 41700
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    .registers 2

    .prologue
    .line 41535
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    return-object v0
.end method

.method public getUserShape()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2

    .prologue
    .line 41751
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 41634
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

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

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 41670
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 41577
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

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
    .line 41556
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

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

.method public hasPhotoId()Z
    .registers 3

    .prologue
    .line 41613
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

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

.method public hasShapeId()Z
    .registers 3

    .prologue
    .line 41727
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

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

.method public hasSubjectGaiaId()Z
    .registers 3

    .prologue
    .line 41691
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41532
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUserShape()Z
    .registers 3

    .prologue
    .line 41748
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 41444
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->hasUserShape()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 41445
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->getUserShape()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 41447
    const/4 v0, 0x0

    .line 41450
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
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
    .line 41303
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41303
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

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
    .line 41303
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41458
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 41459
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_9a

    .line 41464
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41466
    :sswitch_d
    return-object p0

    .line 41471
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 41472
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v3

    .line 41473
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    if-eqz v3, :cond_0

    .line 41474
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41475
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    goto :goto_0

    .line 41480
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41481
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 41485
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41486
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->photoId_:J

    goto :goto_0

    .line 41490
    :sswitch_3b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41491
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 41495
    :sswitch_48
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41496
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->albumId_:J

    goto :goto_0

    .line 41500
    :sswitch_55
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41501
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto :goto_0

    .line 41505
    :sswitch_62
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41506
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    goto :goto_0

    .line 41510
    :sswitch_6f
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41511
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->shapeId_:J

    goto :goto_0

    .line 41515
    :sswitch_7c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v1

    .line 41516
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->hasUserShape()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 41517
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->getUserShape()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    .line 41519
    :cond_8d
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 41520
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setUserShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    goto/16 :goto_0

    .line 41459
    nop

    :sswitch_data_9a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x18 -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x28 -> :sswitch_48
        0x32 -> :sswitch_55
        0x3a -> :sswitch_62
        0x40 -> :sswitch_6f
        0x4a -> :sswitch_7c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 41412
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 41440
    :cond_6
    :goto_6
    return-object p0

    .line 41413
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 41414
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 41416
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 41417
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 41419
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 41420
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 41422
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 41423
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getPhotoId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 41425
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 41426
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 41428
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 41429
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 41431
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasSubjectGaiaId()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 41432
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getSubjectGaiaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setSubjectGaiaId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 41434
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasShapeId()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 41435
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getShapeId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setShapeId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 41437
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasUserShape()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41438
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getUserShape()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->mergeUserShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    goto :goto_6
.end method

.method public mergeUserShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 41770
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 41772
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 41778
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41779
    return-object p0

    .line 41775
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    goto :goto_20
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41647
    if-nez p1, :cond_8

    .line 41648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41650
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41651
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 41653
    return-object p0
.end method

.method public setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 41676
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41677
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->albumId_:J

    .line 41679
    return-object p0
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41590
    if-nez p1, :cond_8

    .line 41591
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41593
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41594
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 41596
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 41562
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41563
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->ownerGaiaId_:J

    .line 41565
    return-object p0
.end method

.method public setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 41619
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41620
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->photoId_:J

    .line 41622
    return-object p0
.end method

.method public setShapeId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 41733
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41734
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->shapeId_:J

    .line 41736
    return-object p0
.end method

.method public setSubjectGaiaId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41704
    if-nez p1, :cond_8

    .line 41705
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41707
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41708
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    .line 41710
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41538
    if-nez p1, :cond_8

    .line 41539
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41541
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41542
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 41544
    return-object p0
.end method

.method public setUserShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 41764
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 41766
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41767
    return-object p0
.end method

.method public setUserShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41754
    if-nez p1, :cond_8

    .line 41755
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41757
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 41759
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 41760
    return-object p0
.end method
