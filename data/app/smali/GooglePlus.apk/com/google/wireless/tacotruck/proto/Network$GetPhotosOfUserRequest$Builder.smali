.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private approvedOffset_:I

.field private approvedResumeToken_:Ljava/lang/Object;

.field private bitField0_:I

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private maxPhotoCount_:I

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnComments_:Z

.field private returnShapes_:Z

.field private unapprovedOffset_:I

.field private unapprovedResumeToken_:Ljava/lang/Object;

.field private userGaiaId_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35575
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 35822
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35963
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    .line 35999
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 36035
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 35576
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maybeForceBuilderInitialization()V

    .line 35577
    return-void
.end method

.method static synthetic access$48900()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 1

    .prologue
    .line 35570
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 1

    .prologue
    .line 35582
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 35580
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35570
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    .registers 3

    .prologue
    .line 35619
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    .line 35620
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 35621
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 35623
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35570
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    .registers 6

    .prologue
    .line 35637
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 35638
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35639
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 35640
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 35641
    or-int/lit8 v2, v2, 0x1

    .line 35643
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->userGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->userGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;J)J

    .line 35644
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 35645
    or-int/lit8 v2, v2, 0x2

    .line 35647
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35648
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 35649
    or-int/lit8 v2, v2, 0x4

    .line 35651
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Z)Z

    .line 35652
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 35653
    or-int/lit8 v2, v2, 0x8

    .line 35655
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Z)Z

    .line 35656
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 35657
    or-int/lit8 v2, v2, 0x10

    .line 35659
    :cond_42
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maxPhotoCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->maxPhotoCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I

    .line 35660
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 35661
    or-int/lit8 v2, v2, 0x20

    .line 35663
    :cond_4f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedOffset_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedOffset_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I

    .line 35664
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 35665
    or-int/lit8 v2, v2, 0x40

    .line 35667
    :cond_5c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedOffset_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedOffset_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I

    .line 35668
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 35669
    or-int/lit16 v2, v2, 0x80

    .line 35671
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35672
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 35673
    or-int/lit16 v2, v2, 0x100

    .line 35675
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35676
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 35677
    or-int/lit16 v2, v2, 0x200

    .line 35679
    :cond_83
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$50002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 35680
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$50102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I

    .line 35681
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35570
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35570
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 35586
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 35587
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->userGaiaId_:J

    .line 35588
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35590
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35591
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnShapes_:Z

    .line 35592
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35593
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnComments_:Z

    .line 35594
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35595
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maxPhotoCount_:I

    .line 35596
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35597
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedOffset_:I

    .line 35598
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35599
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedOffset_:I

    .line 35600
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35601
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    .line 35602
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35603
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 35604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35605
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 35606
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35607
    return-object p0
.end method

.method public clearApprovedOffset()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35935
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35936
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedOffset_:I

    .line 35938
    return-object p0
.end method

.method public clearApprovedResumeToken()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2

    .prologue
    .line 35987
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35988
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getApprovedResumeToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    .line 35990
    return-object p0
.end method

.method public clearFocusObfuscatedId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2

    .prologue
    .line 35846
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35847
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35849
    return-object p0
.end method

.method public clearMaxPhotoCount()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2

    .prologue
    .line 35914
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35915
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maxPhotoCount_:I

    .line 35917
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2

    .prologue
    .line 36071
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 36073
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 36074
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35893
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnComments_:Z

    .line 35896
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35872
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnShapes_:Z

    .line 35875
    return-object p0
.end method

.method public clearUnapprovedOffset()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35956
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35957
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedOffset_:I

    .line 35959
    return-object p0
.end method

.method public clearUnapprovedResumeToken()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2

    .prologue
    .line 36023
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 36024
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUnapprovedResumeToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 36026
    return-object p0
.end method

.method public clearUserGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3

    .prologue
    .line 35815
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35816
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->userGaiaId_:J

    .line 35818
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 35570
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35570
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3

    .prologue
    .line 35611
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

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
    .line 35570
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApprovedOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35926
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedOffset_:I

    return v0
.end method

.method public getApprovedResumeToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35968
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    .line 35969
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 35970
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35971
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    .line 35974
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
    .line 35570
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35570
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    .registers 2

    .prologue
    .line 35615
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35827
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35828
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 35829
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35830
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35833
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
    .line 35905
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maxPhotoCount_:I

    return v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 36040
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35884
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35863
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnShapes_:Z

    return v0
.end method

.method public getUnapprovedOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35947
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedOffset_:I

    return v0
.end method

.method public getUnapprovedResumeToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 36004
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 36005
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 36006
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36007
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 36010
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

.method public getUserGaiaId()J
    .registers 3

    .prologue
    .line 35806
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->userGaiaId_:J

    return-wide v0
.end method

.method public hasApprovedOffset()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35923
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

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

.method public hasApprovedResumeToken()Z
    .registers 3

    .prologue
    .line 35965
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 35824
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

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

.method public hasMaxPhotoCount()Z
    .registers 3

    .prologue
    .line 35902
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

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

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 36037
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35881
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

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
    .line 35860
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

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

.method public hasUnapprovedOffset()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35944
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

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

.method public hasUnapprovedResumeToken()Z
    .registers 3

    .prologue
    .line 36001
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

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

.method public hasUserGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 35803
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

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
    .line 35720
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
    .line 35570
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 35570
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

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
    .line 35570
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35728
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 35729
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_a2

    .line 35734
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35736
    :sswitch_d
    return-object p0

    .line 35741
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35742
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->userGaiaId_:J

    goto :goto_0

    .line 35746
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35747
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnShapes_:Z

    goto :goto_0

    .line 35751
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35752
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnComments_:Z

    goto :goto_0

    .line 35756
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35757
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maxPhotoCount_:I

    goto :goto_0

    .line 35761
    :sswitch_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35762
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedOffset_:I

    goto :goto_0

    .line 35766
    :sswitch_4f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35767
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedOffset_:I

    goto :goto_0

    .line 35771
    :sswitch_5c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35772
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    goto :goto_0

    .line 35776
    :sswitch_69
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35777
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    goto :goto_0

    .line 35781
    :sswitch_76
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 35782
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->hasPhotoOptions()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 35783
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 35785
    :cond_87
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35786
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    goto/16 :goto_0

    .line 35790
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    :sswitch_93
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35791
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 35729
    nop

    :sswitch_data_a2
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
        0x3a -> :sswitch_5c
        0x42 -> :sswitch_69
        0x4a -> :sswitch_76
        0x52 -> :sswitch_93
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 35685
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35716
    :cond_6
    :goto_6
    return-object p0

    .line 35686
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasUserGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 35687
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUserGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35689
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasFocusObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 35690
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35692
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 35693
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35695
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 35696
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35698
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasMaxPhotoCount()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 35699
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getMaxPhotoCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35701
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasApprovedOffset()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 35702
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getApprovedOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setApprovedOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35704
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasUnapprovedOffset()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 35705
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUnapprovedOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setUnapprovedOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35707
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasApprovedResumeToken()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 35708
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getApprovedResumeToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setApprovedResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35710
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasUnapprovedResumeToken()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 35711
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUnapprovedResumeToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setUnapprovedResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35713
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35714
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    goto/16 :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 36059
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 36061
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 36067
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 36068
    return-object p0

    .line 36064
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setApprovedOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35929
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35930
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedOffset_:I

    .line 35932
    return-object p0
.end method

.method public setApprovedResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35978
    if-nez p1, :cond_8

    .line 35979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35981
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35982
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    .line 35984
    return-object p0
.end method

.method public setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35837
    if-nez p1, :cond_8

    .line 35838
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35840
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35841
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35843
    return-object p0
.end method

.method public setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35908
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35909
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maxPhotoCount_:I

    .line 35911
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 36053
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 36055
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 36056
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36043
    if-nez p1, :cond_8

    .line 36044
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36046
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 36048
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 36049
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35887
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35888
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnComments_:Z

    .line 35890
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35866
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35867
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnShapes_:Z

    .line 35869
    return-object p0
.end method

.method public setUnapprovedOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35950
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35951
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedOffset_:I

    .line 35953
    return-object p0
.end method

.method public setUnapprovedResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36014
    if-nez p1, :cond_8

    .line 36015
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36017
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 36018
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 36020
    return-object p0
.end method

.method public setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 35809
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35810
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->userGaiaId_:J

    .line 35812
    return-object p0
.end method
