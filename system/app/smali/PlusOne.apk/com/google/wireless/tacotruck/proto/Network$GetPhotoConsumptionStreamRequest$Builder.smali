.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private focusGroupId_:Ljava/lang/Object;

.field private gaiaGroupId_:Ljava/lang/Object;

.field private maxPhotoCountPerAlbum_:I

.field private maxPhotoCount_:I

.field private offset_:I

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnComments_:Z

.field private returnShapes_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29579
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 29861
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 29897
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 29954
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 29580
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maybeForceBuilderInitialization()V

    .line 29581
    return-void
.end method

.method static synthetic access$40600()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 1

    .prologue
    .line 29574
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 1

    .prologue
    .line 29586
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 29584
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
    .registers 3

    .prologue
    .line 29619
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    .line 29620
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 29621
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 29623
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29574
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
    .registers 6

    .prologue
    .line 29637
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 29638
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29639
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 29640
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 29641
    or-int/lit8 v2, v2, 0x1

    .line 29643
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$40802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;I)I

    .line 29644
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 29645
    or-int/lit8 v2, v2, 0x2

    .line 29647
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCountPerAlbum_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCountPerAlbum_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$40902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;I)I

    .line 29648
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 29649
    or-int/lit8 v2, v2, 0x4

    .line 29651
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->offset_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->offset_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$41002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;I)I

    .line 29652
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 29653
    or-int/lit8 v2, v2, 0x8

    .line 29655
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$41102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Z)Z

    .line 29656
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 29657
    or-int/lit8 v2, v2, 0x10

    .line 29659
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->focusGroupId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$41202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29660
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 29661
    or-int/lit8 v2, v2, 0x20

    .line 29663
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->gaiaGroupId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$41302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29664
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 29665
    or-int/lit8 v2, v2, 0x40

    .line 29667
    :cond_5c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$41402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Z)Z

    .line 29668
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 29669
    or-int/lit16 v2, v2, 0x80

    .line 29671
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$41502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 29672
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->access$41602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;I)I

    .line 29673
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29574
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29574
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29590
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 29591
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCount_:I

    .line 29592
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29593
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCountPerAlbum_:I

    .line 29594
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29595
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->offset_:I

    .line 29596
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29597
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnComments_:Z

    .line 29598
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29599
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 29600
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29601
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 29602
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29603
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnShapes_:Z

    .line 29604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29605
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 29606
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29607
    return-object p0
.end method

.method public clearFocusGroupId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 29885
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29886
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getFocusGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 29888
    return-object p0
.end method

.method public clearGaiaGroupId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 29921
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29922
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getGaiaGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 29924
    return-object p0
.end method

.method public clearMaxPhotoCount()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 29791
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29792
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCount_:I

    .line 29794
    return-object p0
.end method

.method public clearMaxPhotoCountPerAlbum()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 29812
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29813
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCountPerAlbum_:I

    .line 29815
    return-object p0
.end method

.method public clearOffset()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 29833
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29834
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->offset_:I

    .line 29836
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 29990
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 29992
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29993
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29854
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnComments_:Z

    .line 29857
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29947
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnShapes_:Z

    .line 29950
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 29574
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29574
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3

    .prologue
    .line 29611
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

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
    .line 29574
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 29574
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29574
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
    .registers 2

    .prologue
    .line 29615
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusGroupId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 29866
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 29867
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 29868
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 29869
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 29872
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

.method public getGaiaGroupId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 29902
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 29903
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 29904
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 29905
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 29908
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

.method public getMaxPhotoCount()I
    .registers 2

    .prologue
    .line 29782
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCount_:I

    return v0
.end method

.method public getMaxPhotoCountPerAlbum()I
    .registers 2

    .prologue
    .line 29803
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCountPerAlbum_:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 29824
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->offset_:I

    return v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 29959
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29845
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29938
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnShapes_:Z

    return v0
.end method

.method public hasFocusGroupId()Z
    .registers 3

    .prologue
    .line 29863
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

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

.method public hasGaiaGroupId()Z
    .registers 3

    .prologue
    .line 29899
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

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

.method public hasMaxPhotoCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 29779
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMaxPhotoCountPerAlbum()Z
    .registers 3

    .prologue
    .line 29800
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 29821
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

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

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 29956
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29842
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29935
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

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
    .line 29574
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

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
    .line 29574
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29714
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 29715
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_86

    .line 29720
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29722
    :sswitch_d
    return-object p0

    .line 29727
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29728
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCount_:I

    goto :goto_0

    .line 29732
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29733
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCountPerAlbum_:I

    goto :goto_0

    .line 29737
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29738
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->offset_:I

    goto :goto_0

    .line 29742
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29743
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnComments_:Z

    goto :goto_0

    .line 29747
    :sswitch_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29748
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    goto :goto_0

    .line 29752
    :sswitch_4f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29753
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    goto :goto_0

    .line 29757
    :sswitch_5c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29758
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnShapes_:Z

    goto :goto_0

    .line 29762
    :sswitch_69
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 29763
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->hasPhotoOptions()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 29764
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 29766
    :cond_7a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29767
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    goto/16 :goto_0

    .line 29715
    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_4f
        0x38 -> :sswitch_5c
        0x42 -> :sswitch_69
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 29677
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 29702
    :cond_6
    :goto_6
    return-object p0

    .line 29678
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasMaxPhotoCount()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29679
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getMaxPhotoCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 29681
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasMaxPhotoCountPerAlbum()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 29682
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getMaxPhotoCountPerAlbum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setMaxPhotoCountPerAlbum(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 29684
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasOffset()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 29685
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 29687
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 29688
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 29690
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasFocusGroupId()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 29691
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getFocusGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setFocusGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 29693
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasGaiaGroupId()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 29694
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getGaiaGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setGaiaGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 29696
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 29697
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    .line 29699
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29700
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    goto :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29978
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 29980
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 29986
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29987
    return-object p0

    .line 29983
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setFocusGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29876
    if-nez p1, :cond_8

    .line 29877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29879
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29880
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->focusGroupId_:Ljava/lang/Object;

    .line 29882
    return-object p0
.end method

.method public setGaiaGroupId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29912
    if-nez p1, :cond_8

    .line 29913
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29915
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29916
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->gaiaGroupId_:Ljava/lang/Object;

    .line 29918
    return-object p0
.end method

.method public setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29785
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29786
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCount_:I

    .line 29788
    return-object p0
.end method

.method public setMaxPhotoCountPerAlbum(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29806
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29807
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->maxPhotoCountPerAlbum_:I

    .line 29809
    return-object p0
.end method

.method public setOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29827
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29828
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->offset_:I

    .line 29830
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29972
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 29974
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29975
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29962
    if-nez p1, :cond_8

    .line 29963
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29965
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 29967
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29968
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29848
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29849
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnComments_:Z

    .line 29851
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29941
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->bitField0_:I

    .line 29942
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->returnShapes_:Z

    .line 29944
    return-object p0
.end method
