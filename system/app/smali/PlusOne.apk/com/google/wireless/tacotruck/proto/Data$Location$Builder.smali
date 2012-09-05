.class public final Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Location;",
        "Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$LocationOrBuilder;"
    }
.end annotation


# instance fields
.field private accuracy_:I

.field private bitField0_:I

.field private clickTrackingUrl_:Ljava/lang/Object;

.field private distanceInMetres_:D

.field private hasOffer_:Z

.field private isRecommended_:Z

.field private latSpanE7_:I

.field private lngSpanE7_:I

.field private localClusterId_:Ljava/lang/Object;

.field private mapsUrlSignature_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

.field private reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21365
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21629
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 21672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    .line 21708
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 21744
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 21871
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    .line 21949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    .line 21366
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->maybeForceBuilderInitialization()V

    .line 21367
    return-void
.end method

.method static synthetic access$28200(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21360
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$28300()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 1

    .prologue
    .line 21360
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21422
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    .line 21423
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 21424
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 21427
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 1

    .prologue
    .line 21372
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 21370
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3

    .prologue
    .line 21413
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    .line 21414
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 21415
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 21417
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 6

    .prologue
    .line 21431
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Location;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 21432
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Location;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21433
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 21434
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 21435
    or-int/lit8 v2, v2, 0x1

    .line 21437
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$28502(Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 21438
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 21439
    or-int/lit8 v2, v2, 0x2

    .line 21441
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->localClusterId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$28602(Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21442
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 21443
    or-int/lit8 v2, v2, 0x4

    .line 21445
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$28702(Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21446
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 21447
    or-int/lit8 v2, v2, 0x8

    .line 21449
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$28802(Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 21450
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 21451
    or-int/lit8 v2, v2, 0x10

    .line 21453
    :cond_42
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->accuracy_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->accuracy_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$28902(Lcom/google/wireless/tacotruck/proto/Data$Location;I)I

    .line 21454
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 21455
    or-int/lit8 v2, v2, 0x20

    .line 21457
    :cond_4f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->latSpanE7_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->latSpanE7_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$29002(Lcom/google/wireless/tacotruck/proto/Data$Location;I)I

    .line 21458
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 21459
    or-int/lit8 v2, v2, 0x40

    .line 21461
    :cond_5c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->lngSpanE7_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->lngSpanE7_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$29102(Lcom/google/wireless/tacotruck/proto/Data$Location;I)I

    .line 21462
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 21463
    or-int/lit16 v2, v2, 0x80

    .line 21465
    :cond_69
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->distanceInMetres_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->distanceInMetres_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$29202(Lcom/google/wireless/tacotruck/proto/Data$Location;D)D

    .line 21466
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 21467
    or-int/lit16 v2, v2, 0x100

    .line 21469
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->mapsUrlSignature_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$29302(Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21470
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 21471
    or-int/lit16 v2, v2, 0x200

    .line 21473
    :cond_83
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasOffer_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->hasOffer_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$29402(Lcom/google/wireless/tacotruck/proto/Data$Location;Z)Z

    .line 21474
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 21475
    or-int/lit16 v2, v2, 0x400

    .line 21477
    :cond_90
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->isRecommended_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->isRecommended_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$29502(Lcom/google/wireless/tacotruck/proto/Data$Location;Z)Z

    .line 21478
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_9d

    .line 21479
    or-int/lit16 v2, v2, 0x800

    .line 21481
    :cond_9d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->clickTrackingUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$29602(Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21482
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Location;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->access$29702(Lcom/google/wireless/tacotruck/proto/Data$Location;I)I

    .line 21483
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 21376
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21377
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 21378
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    .line 21380
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 21382
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21383
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 21384
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21385
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->accuracy_:I

    .line 21386
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21387
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->latSpanE7_:I

    .line 21388
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21389
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->lngSpanE7_:I

    .line 21390
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21391
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->distanceInMetres_:D

    .line 21392
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    .line 21394
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21395
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasOffer_:Z

    .line 21396
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21397
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->isRecommended_:Z

    .line 21398
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21399
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    .line 21400
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21401
    return-object p0
.end method

.method public clearAccuracy()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 21801
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21802
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->accuracy_:I

    .line 21804
    return-object p0
.end method

.method public clearClickTrackingUrl()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 21973
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21974
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    .line 21976
    return-object p0
.end method

.method public clearDistanceInMetres()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3

    .prologue
    .line 21864
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21865
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->distanceInMetres_:D

    .line 21867
    return-object p0
.end method

.method public clearHasOffer()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 21921
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasOffer_:Z

    .line 21924
    return-object p0
.end method

.method public clearIsRecommended()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 21942
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->isRecommended_:Z

    .line 21945
    return-object p0
.end method

.method public clearLatSpanE7()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 21822
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21823
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->latSpanE7_:I

    .line 21825
    return-object p0
.end method

.method public clearLngSpanE7()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 21843
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21844
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->lngSpanE7_:I

    .line 21846
    return-object p0
.end method

.method public clearLocalClusterId()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 21696
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21697
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLocalClusterId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    .line 21699
    return-object p0
.end method

.method public clearMapsUrlSignature()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 21895
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21896
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getMapsUrlSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    .line 21898
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 21732
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21733
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 21735
    return-object p0
.end method

.method public clearPosition()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 21665
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 21667
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21668
    return-object p0
.end method

.method public clearReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 21780
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 21782
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21783
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 21360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3

    .prologue
    .line 21405
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

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
    .line 21360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 21792
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->accuracy_:I

    return v0
.end method

.method public getClickTrackingUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21954
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    .line 21955
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21956
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21957
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    .line 21960
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
    .line 21360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21360
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 21409
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public getDistanceInMetres()D
    .registers 3

    .prologue
    .line 21855
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->distanceInMetres_:D

    return-wide v0
.end method

.method public getHasOffer()Z
    .registers 2

    .prologue
    .line 21912
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasOffer_:Z

    return v0
.end method

.method public getIsRecommended()Z
    .registers 2

    .prologue
    .line 21933
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->isRecommended_:Z

    return v0
.end method

.method public getLatSpanE7()I
    .registers 2

    .prologue
    .line 21813
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->latSpanE7_:I

    return v0
.end method

.method public getLngSpanE7()I
    .registers 2

    .prologue
    .line 21834
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->lngSpanE7_:I

    return v0
.end method

.method public getLocalClusterId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21677
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    .line 21678
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21679
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21680
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    .line 21683
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

.method public getMapsUrlSignature()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21876
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    .line 21877
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21878
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21879
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    .line 21882
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

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21713
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 21714
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21715
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21716
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 21719
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

.method public getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 21634
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 2

    .prologue
    .line 21749
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    return-object v0
.end method

.method public hasAccuracy()Z
    .registers 3

    .prologue
    .line 21789
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasClickTrackingUrl()Z
    .registers 3

    .prologue
    .line 21951
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDistanceInMetres()Z
    .registers 3

    .prologue
    .line 21852
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasHasOffer()Z
    .registers 3

    .prologue
    .line 21909
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasIsRecommended()Z
    .registers 3

    .prologue
    .line 21930
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasLatSpanE7()Z
    .registers 3

    .prologue
    .line 21810
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasLngSpanE7()Z
    .registers 3

    .prologue
    .line 21831
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasLocalClusterId()Z
    .registers 3

    .prologue
    .line 21674
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasMapsUrlSignature()Z
    .registers 3

    .prologue
    .line 21873
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 21710
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasPosition()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21631
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasReverseGeocode()Z
    .registers 3

    .prologue
    .line 21746
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

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
    .line 21360
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

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
    .line 21360
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21542
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 21543
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_ce

    .line 21548
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 21550
    :sswitch_d
    return-object p0

    .line 21555
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    .line 21556
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasPosition()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 21557
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 21559
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 21560
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    goto :goto_0

    .line 21564
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21565
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    goto :goto_0

    .line 21569
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21570
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 21574
    :sswitch_44
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    .line 21575
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasReverseGeocode()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 21576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    .line 21578
    :cond_55
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 21579
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    goto :goto_0

    .line 21583
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    :sswitch_60
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21584
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->accuracy_:I

    goto :goto_0

    .line 21588
    :sswitch_6d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21589
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->latSpanE7_:I

    goto :goto_0

    .line 21593
    :sswitch_7a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21594
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->lngSpanE7_:I

    goto/16 :goto_0

    .line 21598
    :sswitch_88
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21599
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->distanceInMetres_:D

    goto/16 :goto_0

    .line 21603
    :sswitch_96
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21604
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21608
    :sswitch_a4
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21609
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasOffer_:Z

    goto/16 :goto_0

    .line 21613
    :sswitch_b2
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21614
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->isRecommended_:Z

    goto/16 :goto_0

    .line 21618
    :sswitch_c0
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21619
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21543
    :sswitch_data_ce
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
        0x22 -> :sswitch_44
        0x38 -> :sswitch_60
        0x40 -> :sswitch_6d
        0x48 -> :sswitch_7a
        0x51 -> :sswitch_88
        0x5a -> :sswitch_96
        0x60 -> :sswitch_a4
        0x68 -> :sswitch_b2
        0x72 -> :sswitch_c0
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 21487
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 21524
    :cond_6
    :goto_6
    return-object p0

    .line 21488
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 21489
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 21491
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLocalClusterId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 21492
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLocalClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setLocalClusterId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 21494
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 21495
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 21497
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasReverseGeocode()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 21498
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mergeReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 21500
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 21501
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getAccuracy()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setAccuracy(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 21503
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLatSpanE7()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 21504
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLatSpanE7()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setLatSpanE7(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 21506
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLngSpanE7()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 21507
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLngSpanE7()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setLngSpanE7(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 21509
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasDistanceInMetres()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 21510
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDistanceInMetres()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setDistanceInMetres(D)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 21512
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasMapsUrlSignature()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 21513
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getMapsUrlSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setMapsUrlSignature(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 21515
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasHasOffer()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 21516
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getHasOffer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setHasOffer(Z)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 21518
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasIsRecommended()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 21519
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getIsRecommended()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setIsRecommended(Z)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 21521
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasClickTrackingUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21522
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setClickTrackingUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    goto/16 :goto_6
.end method

.method public mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21653
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 21655
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 21661
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21662
    return-object p0

    .line 21658
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    goto :goto_1f
.end method

.method public mergeReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21768
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 21770
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 21776
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21777
    return-object p0

    .line 21773
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    goto :goto_20
.end method

.method public setAccuracy(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21795
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21796
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->accuracy_:I

    .line 21798
    return-object p0
.end method

.method public setClickTrackingUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21964
    if-nez p1, :cond_8

    .line 21965
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21967
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21968
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->clickTrackingUrl_:Ljava/lang/Object;

    .line 21970
    return-object p0
.end method

.method public setDistanceInMetres(D)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21858
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21859
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->distanceInMetres_:D

    .line 21861
    return-object p0
.end method

.method public setHasOffer(Z)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21915
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21916
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->hasOffer_:Z

    .line 21918
    return-object p0
.end method

.method public setIsRecommended(Z)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21936
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21937
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->isRecommended_:Z

    .line 21939
    return-object p0
.end method

.method public setLatSpanE7(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21816
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21817
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->latSpanE7_:I

    .line 21819
    return-object p0
.end method

.method public setLngSpanE7(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21837
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21838
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->lngSpanE7_:I

    .line 21840
    return-object p0
.end method

.method public setLocalClusterId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21687
    if-nez p1, :cond_8

    .line 21688
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21690
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21691
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->localClusterId_:Ljava/lang/Object;

    .line 21693
    return-object p0
.end method

.method public setMapsUrlSignature(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21886
    if-nez p1, :cond_8

    .line 21887
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21889
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21890
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->mapsUrlSignature_:Ljava/lang/Object;

    .line 21892
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21723
    if-nez p1, :cond_8

    .line 21724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21726
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21727
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 21729
    return-object p0
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 21647
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 21649
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21650
    return-object p0
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21637
    if-nez p1, :cond_8

    .line 21638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21640
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 21642
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21643
    return-object p0
.end method

.method public setReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 21762
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 21764
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21765
    return-object p0
.end method

.method public setReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21752
    if-nez p1, :cond_8

    .line 21753
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21755
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->reverseGeocode_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 21757
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->bitField0_:I

    .line 21758
    return-object p0
.end method
