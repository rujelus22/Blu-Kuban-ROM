.class public final Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;",
        ">;",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private profilePhotoUrl_:Ljava/lang/Object;

.field private profileUrl_:Ljava/lang/Object;

.field private userId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->userId_:Ljava/lang/Object;

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->displayName_:Ljava/lang/Object;

    .line 668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profileUrl_:Ljava/lang/Object;

    .line 704
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->maybeForceBuilderInitialization()V

    .line 460
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 1

    .prologue
    .line 453
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 501
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 504
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 1

    .prologue
    .line 465
    new-instance v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    invoke-direct {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 463
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 3

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 492
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 494
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 508
    new-instance v2, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;-><init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;Lcom/google/goggles/AnnotationResultProtos$1;)V

    .line 509
    iget v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 510
    const/4 v1, 0x0

    .line 511
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3c

    .line 514
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->userId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->userId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->access$302(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 516
    or-int/lit8 v0, v0, 0x2

    .line 518
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->displayName_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->access$402(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 520
    or-int/lit8 v0, v0, 0x4

    .line 522
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profileUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profileUrl_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->access$502(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_33

    .line 524
    or-int/lit8 v0, v0, 0x8

    .line 526
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->profilePhotoUrl_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->access$602(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->access$702(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;I)I

    .line 528
    return-object v2

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 2

    .prologue
    .line 469
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 470
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->userId_:Ljava/lang/Object;

    .line 471
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 472
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->displayName_:Ljava/lang/Object;

    .line 473
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 474
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profileUrl_:Ljava/lang/Object;

    .line 475
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 476
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 477
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 478
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDisplayName()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 2

    .prologue
    .line 656
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 657
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->displayName_:Ljava/lang/Object;

    .line 659
    return-object p0
.end method

.method public clearProfilePhotoUrl()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 2

    .prologue
    .line 728
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 729
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 731
    return-object p0
.end method

.method public clearProfileUrl()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 2

    .prologue
    .line 692
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 693
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getProfileUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profileUrl_:Ljava/lang/Object;

    .line 695
    return-object p0
.end method

.method public clearUserId()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 2

    .prologue
    .line 620
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 621
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->userId_:Ljava/lang/Object;

    .line 623
    return-object p0
.end method

.method public clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 3

    .prologue
    .line 482
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

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
    .line 453
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;
    .registers 2

    .prologue
    .line 486
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->displayName_:Ljava/lang/Object;

    .line 638
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 639
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 640
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->displayName_:Ljava/lang/Object;

    .line 643
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getProfilePhotoUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 710
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 711
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 712
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 715
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getProfileUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profileUrl_:Ljava/lang/Object;

    .line 674
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 675
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 676
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profileUrl_:Ljava/lang/Object;

    .line 679
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getUserId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->userId_:Ljava/lang/Object;

    .line 602
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 603
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 604
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->userId_:Ljava/lang/Object;

    .line 607
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 634
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

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

.method public hasProfilePhotoUrl()Z
    .registers 3

    .prologue
    .line 706
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

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

.method public hasProfileUrl()Z
    .registers 3

    .prologue
    .line 670
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 598
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 532
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 545
    :cond_6
    :goto_6
    return-object p0

    .line 533
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 534
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->setUserId(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    .line 536
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 537
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    .line 539
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->hasProfileUrl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 540
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getProfileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->setProfileUrl(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    .line 542
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->hasProfilePhotoUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 543
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->setProfilePhotoUrl(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 558
    sparse-switch v0, :sswitch_data_42

    .line 563
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    :sswitch_d
    return-object p0

    .line 570
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 571
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->userId_:Ljava/lang/Object;

    goto :goto_0

    .line 575
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 576
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 580
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 581
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profileUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 585
    :sswitch_35
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 586
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 558
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 453
    check-cast p1, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;

    invoke-virtual {p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 647
    if-nez p1, :cond_8

    .line 648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 650
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 651
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->displayName_:Ljava/lang/Object;

    .line 653
    return-object p0
.end method

.method setDisplayName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 662
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 663
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->displayName_:Ljava/lang/Object;

    .line 665
    return-void
.end method

.method public setProfilePhotoUrl(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 719
    if-nez p1, :cond_8

    .line 720
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 722
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 723
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 725
    return-object p0
.end method

.method setProfilePhotoUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 734
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 735
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profilePhotoUrl_:Ljava/lang/Object;

    .line 737
    return-void
.end method

.method public setProfileUrl(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 683
    if-nez p1, :cond_8

    .line 684
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 686
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 687
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profileUrl_:Ljava/lang/Object;

    .line 689
    return-object p0
.end method

.method setProfileUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 698
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 699
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->profileUrl_:Ljava/lang/Object;

    .line 701
    return-void
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 611
    if-nez p1, :cond_8

    .line 612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 614
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 615
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->userId_:Ljava/lang/Object;

    .line 617
    return-object p0
.end method

.method setUserId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 626
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->bitField0_:I

    .line 627
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PersonInformation$Builder;->userId_:Ljava/lang/Object;

    .line 629
    return-void
.end method
