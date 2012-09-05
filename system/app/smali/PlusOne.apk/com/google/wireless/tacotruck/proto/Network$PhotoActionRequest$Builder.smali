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
    .line 40512
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 40734
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 40779
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 40836
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 40893
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    .line 40950
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 40513
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->maybeForceBuilderInitialization()V

    .line 40514
    return-void
.end method

.method static synthetic access$55800()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 1

    .prologue
    .line 40507
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 1

    .prologue
    .line 40519
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40517
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    .registers 3

    .prologue
    .line 40554
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    .line 40555
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40556
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40558
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40507
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    .registers 6

    .prologue
    .line 40572
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 40573
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40574
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 40575
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 40576
    or-int/lit8 v2, v2, 0x1

    .line 40578
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$56002(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 40579
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 40580
    or-int/lit8 v2, v2, 0x2

    .line 40582
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$56102(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J

    .line 40583
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 40584
    or-int/lit8 v2, v2, 0x4

    .line 40586
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$56202(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40587
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 40588
    or-int/lit8 v2, v2, 0x8

    .line 40590
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->photoId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->photoId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$56302(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J

    .line 40591
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 40592
    or-int/lit8 v2, v2, 0x10

    .line 40594
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$56402(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40595
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 40596
    or-int/lit8 v2, v2, 0x20

    .line 40598
    :cond_4f
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->albumId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->albumId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$56502(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J

    .line 40599
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 40600
    or-int/lit8 v2, v2, 0x40

    .line 40602
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->subjectGaiaId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$56602(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40603
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 40604
    or-int/lit16 v2, v2, 0x80

    .line 40606
    :cond_69
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->shapeId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->shapeId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$56702(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;J)J

    .line 40607
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 40608
    or-int/lit16 v2, v2, 0x100

    .line 40610
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$56802(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 40611
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->access$56902(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;I)I

    .line 40612
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40507
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40507
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 40523
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40524
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 40525
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40526
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->ownerGaiaId_:J

    .line 40527
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 40529
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40530
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->photoId_:J

    .line 40531
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 40533
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40534
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->albumId_:J

    .line 40535
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40536
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    .line 40537
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40538
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->shapeId_:J

    .line 40539
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40540
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 40541
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40542
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2

    .prologue
    .line 40860
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40861
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 40863
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3

    .prologue
    .line 40886
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40887
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->albumId_:J

    .line 40889
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2

    .prologue
    .line 40803
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40804
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 40806
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3

    .prologue
    .line 40772
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40773
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->ownerGaiaId_:J

    .line 40775
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3

    .prologue
    .line 40829
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40830
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->photoId_:J

    .line 40832
    return-object p0
.end method

.method public clearShapeId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3

    .prologue
    .line 40943
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40944
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->shapeId_:J

    .line 40946
    return-object p0
.end method

.method public clearSubjectGaiaId()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2

    .prologue
    .line 40917
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40918
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getSubjectGaiaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    .line 40920
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2

    .prologue
    .line 40751
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40752
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 40754
    return-object p0
.end method

.method public clearUserShape()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 2

    .prologue
    .line 40986
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 40988
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40989
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40507
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40507
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3

    .prologue
    .line 40546
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
    .line 40507
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40841
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 40842
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 40843
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 40844
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 40847
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
    .line 40877
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40507
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40507
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;
    .registers 2

    .prologue
    .line 40550
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40784
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 40785
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 40786
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 40787
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 40790
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
    .line 40763
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 40820
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->photoId_:J

    return-wide v0
.end method

.method public getShapeId()J
    .registers 3

    .prologue
    .line 40934
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->shapeId_:J

    return-wide v0
.end method

.method public getSubjectGaiaId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40898
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    .line 40899
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 40900
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 40901
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    .line 40904
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
    .line 40739
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    return-object v0
.end method

.method public getUserShape()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2

    .prologue
    .line 40955
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 40838
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
    .line 40874
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
    .line 40781
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
    .line 40760
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
    .line 40817
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
    .line 40931
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
    .line 40895
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

    .line 40736
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
    .line 40952
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
    .line 40507
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

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
    .line 40507
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
    .line 40662
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 40663
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_9a

    .line 40668
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 40670
    :sswitch_d
    return-object p0

    .line 40675
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 40676
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v3

    .line 40677
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    if-eqz v3, :cond_0

    .line 40678
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40679
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    goto :goto_0

    .line 40684
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40685
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 40689
    :sswitch_2e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40690
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->photoId_:J

    goto :goto_0

    .line 40694
    :sswitch_3b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40695
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 40699
    :sswitch_48
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40700
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->albumId_:J

    goto :goto_0

    .line 40704
    :sswitch_55
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40705
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto :goto_0

    .line 40709
    :sswitch_62
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40710
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    goto :goto_0

    .line 40714
    :sswitch_6f
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40715
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->shapeId_:J

    goto :goto_0

    .line 40719
    :sswitch_7c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v1

    .line 40720
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->hasUserShape()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 40721
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->getUserShape()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    .line 40723
    :cond_8d
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 40724
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setUserShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    goto/16 :goto_0

    .line 40663
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
    .line 40616
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40644
    :cond_6
    :goto_6
    return-object p0

    .line 40617
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40618
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 40620
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 40621
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 40623
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 40624
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 40626
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 40627
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getPhotoId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 40629
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 40630
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 40632
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 40633
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 40635
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasSubjectGaiaId()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 40636
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getSubjectGaiaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setSubjectGaiaId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 40638
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasShapeId()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 40639
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getShapeId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setShapeId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 40641
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->hasUserShape()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40642
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getUserShape()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->mergeUserShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    goto :goto_6
.end method

.method public mergeUserShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 40974
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 40976
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 40982
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40983
    return-object p0

    .line 40979
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    goto :goto_20
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40851
    if-nez p1, :cond_8

    .line 40852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40854
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40855
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 40857
    return-object p0
.end method

.method public setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 40880
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40881
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->albumId_:J

    .line 40883
    return-object p0
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40794
    if-nez p1, :cond_8

    .line 40795
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40797
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40798
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 40800
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 40766
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40767
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->ownerGaiaId_:J

    .line 40769
    return-object p0
.end method

.method public setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 40823
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40824
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->photoId_:J

    .line 40826
    return-object p0
.end method

.method public setShapeId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 40937
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40938
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->shapeId_:J

    .line 40940
    return-object p0
.end method

.method public setSubjectGaiaId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40908
    if-nez p1, :cond_8

    .line 40909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40911
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40912
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->subjectGaiaId_:Ljava/lang/Object;

    .line 40914
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40742
    if-nez p1, :cond_8

    .line 40743
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40745
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40746
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 40748
    return-object p0
.end method

.method public setUserShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 40968
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 40970
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40971
    return-object p0
.end method

.method public setUserShape(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40958
    if-nez p1, :cond_8

    .line 40959
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40961
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->userShape_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 40963
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->bitField0_:I

    .line 40964
    return-object p0
.end method
