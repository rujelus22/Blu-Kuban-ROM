.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private ifModifiedSince_:J

.field private includeDeleted_:Z

.field private ownerGaiaId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private resultsPerPage_:I

.field private resumeToken_:Ljava/lang/Object;

.field private returnComments_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17589
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17836
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17998
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    .line 18034
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 17590
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->maybeForceBuilderInitialization()V

    .line 17591
    return-void
.end method

.method static synthetic access$22900()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 1

    .prologue
    .line 17584
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 1

    .prologue
    .line 17596
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 17594
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17584
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
    .registers 3

    .prologue
    .line 17633
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    .line 17634
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 17635
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 17637
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17584
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
    .registers 6

    .prologue
    .line 17651
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 17652
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17653
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 17654
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 17655
    or-int/lit8 v2, v2, 0x1

    .line 17657
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;J)J

    .line 17658
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 17659
    or-int/lit8 v2, v2, 0x2

    .line 17661
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17662
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 17663
    or-int/lit8 v2, v2, 0x4

    .line 17665
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnUrls_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnUrls_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z

    .line 17666
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 17667
    or-int/lit8 v2, v2, 0x8

    .line 17669
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z

    .line 17670
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 17671
    or-int/lit8 v2, v2, 0x10

    .line 17673
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z

    .line 17674
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 17675
    or-int/lit8 v2, v2, 0x20

    .line 17677
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->includeDeleted_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->includeDeleted_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z

    .line 17678
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 17679
    or-int/lit8 v2, v2, 0x40

    .line 17681
    :cond_5c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ifModifiedSince_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ifModifiedSince_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;J)J

    .line 17682
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 17683
    or-int/lit16 v2, v2, 0x80

    .line 17685
    :cond_69
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resultsPerPage_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resultsPerPage_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;I)I

    .line 17686
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 17687
    or-int/lit16 v2, v2, 0x100

    .line 17689
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17690
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 17691
    or-int/lit16 v2, v2, 0x200

    .line 17693
    :cond_83
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$24002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 17694
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$24102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;I)I

    .line 17695
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17584
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17584
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 17600
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 17601
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ownerGaiaId_:J

    .line 17602
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17603
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17605
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnUrls_:Z

    .line 17606
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17607
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnComments_:Z

    .line 17608
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17609
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnShapes_:Z

    .line 17610
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17611
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->includeDeleted_:Z

    .line 17612
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17613
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ifModifiedSince_:J

    .line 17614
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17615
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resultsPerPage_:I

    .line 17616
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17617
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17618
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17619
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 17620
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17621
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2

    .prologue
    .line 17860
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17861
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17863
    return-object p0
.end method

.method public clearIfModifiedSince()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3

    .prologue
    .line 17970
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17971
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ifModifiedSince_:J

    .line 17973
    return-object p0
.end method

.method public clearIncludeDeleted()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2

    .prologue
    .line 17949
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->includeDeleted_:Z

    .line 17952
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3

    .prologue
    .line 17829
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17830
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ownerGaiaId_:J

    .line 17832
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2

    .prologue
    .line 18070
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 18072
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 18073
    return-object p0
.end method

.method public clearResultsPerPage()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2

    .prologue
    .line 17991
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17992
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resultsPerPage_:I

    .line 17994
    return-object p0
.end method

.method public clearResumeToken()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2

    .prologue
    .line 18022
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 18023
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getResumeToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    .line 18025
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17907
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnComments_:Z

    .line 17910
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17928
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnShapes_:Z

    .line 17931
    return-object p0
.end method

.method public clearReturnUrls()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17886
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnUrls_:Z

    .line 17889
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 17584
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17584
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3

    .prologue
    .line 17625
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

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
    .line 17584
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 17584
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17584
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
    .registers 2

    .prologue
    .line 17629
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17841
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17842
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17843
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17844
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17847
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
    .line 17961
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ifModifiedSince_:J

    return-wide v0
.end method

.method public getIncludeDeleted()Z
    .registers 2

    .prologue
    .line 17940
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->includeDeleted_:Z

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 17820
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 18039
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getResultsPerPage()I
    .registers 2

    .prologue
    .line 17982
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resultsPerPage_:I

    return v0
.end method

.method public getResumeToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 18003
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    .line 18004
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 18005
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18006
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    .line 18009
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

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17898
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17919
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17877
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnUrls_:Z

    return v0
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 17838
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

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
    .line 17958
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

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

.method public hasIncludeDeleted()Z
    .registers 3

    .prologue
    .line 17937
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 17817
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

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
    .line 18036
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

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

.method public hasResultsPerPage()Z
    .registers 3

    .prologue
    .line 17979
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

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

.method public hasResumeToken()Z
    .registers 3

    .prologue
    .line 18000
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17895
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

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
    .line 17916
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

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

.method public hasReturnUrls()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17874
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 17734
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
    .line 17584
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 17584
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

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
    .line 17584
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17742
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 17743
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_a2

    .line 17748
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17750
    :sswitch_d
    return-object p0

    .line 17755
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17756
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 17760
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17761
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnUrls_:Z

    goto :goto_0

    .line 17765
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17766
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnComments_:Z

    goto :goto_0

    .line 17770
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17771
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnShapes_:Z

    goto :goto_0

    .line 17775
    :sswitch_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17776
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->includeDeleted_:Z

    goto :goto_0

    .line 17780
    :sswitch_4f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17781
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ifModifiedSince_:J

    goto :goto_0

    .line 17785
    :sswitch_5c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17786
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resultsPerPage_:I

    goto :goto_0

    .line 17790
    :sswitch_69
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17791
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    goto :goto_0

    .line 17795
    :sswitch_76
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 17796
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->hasPhotoOptions()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 17797
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 17799
    :cond_87
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17800
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    goto/16 :goto_0

    .line 17804
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    :sswitch_93
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17805
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17743
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
        0x38 -> :sswitch_5c
        0x42 -> :sswitch_69
        0x4a -> :sswitch_76
        0x52 -> :sswitch_93
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 17699
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 17730
    :cond_6
    :goto_6
    return-object p0

    .line 17700
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 17701
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17703
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 17704
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17706
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasReturnUrls()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 17707
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getReturnUrls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17709
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 17710
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17712
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 17713
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17715
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasIncludeDeleted()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 17716
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getIncludeDeleted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setIncludeDeleted(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17718
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasIfModifiedSince()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 17719
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getIfModifiedSince()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setIfModifiedSince(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17721
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasResultsPerPage()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 17722
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getResultsPerPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setResultsPerPage(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17724
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasResumeToken()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 17725
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getResumeToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17727
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17728
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    goto/16 :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18058
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 18060
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 18066
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 18067
    return-object p0

    .line 18063
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17851
    if-nez p1, :cond_8

    .line 17852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17854
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17855
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17857
    return-object p0
.end method

.method public setIfModifiedSince(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17964
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17965
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ifModifiedSince_:J

    .line 17967
    return-object p0
.end method

.method public setIncludeDeleted(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17943
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17944
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->includeDeleted_:Z

    .line 17946
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17823
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17824
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ownerGaiaId_:J

    .line 17826
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 18052
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 18054
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 18055
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18042
    if-nez p1, :cond_8

    .line 18043
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18045
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 18047
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 18048
    return-object p0
.end method

.method public setResultsPerPage(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17985
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17986
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resultsPerPage_:I

    .line 17988
    return-object p0
.end method

.method public setResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18013
    if-nez p1, :cond_8

    .line 18014
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18016
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 18017
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    .line 18019
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17901
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17902
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnComments_:Z

    .line 17904
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17922
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17923
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnShapes_:Z

    .line 17925
    return-object p0
.end method

.method public setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17880
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17881
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnUrls_:Z

    .line 17883
    return-object p0
.end method
