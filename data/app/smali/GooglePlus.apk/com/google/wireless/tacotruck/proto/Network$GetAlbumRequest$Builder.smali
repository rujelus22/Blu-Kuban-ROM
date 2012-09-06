.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private id_:J

.field private ownerGaiaId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnAlbumInfo_:Z

.field private returnComments_:Z

.field private returnPhotos_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15759
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16013
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnPhotos_:Z

    .line 16154
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 15760
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->maybeForceBuilderInitialization()V

    .line 15761
    return-void
.end method

.method static synthetic access$20200()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 1

    .prologue
    .line 15754
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 1

    .prologue
    .line 15766
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15764
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15754
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    .registers 3

    .prologue
    .line 15801
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    .line 15802
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15803
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15805
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15754
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    .registers 6

    .prologue
    .line 15819
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 15820
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15821
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15822
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 15823
    or-int/lit8 v2, v2, 0x1

    .line 15825
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->id_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20402(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;J)J

    .line 15826
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 15827
    or-int/lit8 v2, v2, 0x2

    .line 15829
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20502(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;J)J

    .line 15830
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 15831
    or-int/lit8 v2, v2, 0x4

    .line 15833
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20602(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15834
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 15835
    or-int/lit8 v2, v2, 0x8

    .line 15837
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnUrls_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnUrls_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20702(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z

    .line 15838
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 15839
    or-int/lit8 v2, v2, 0x10

    .line 15841
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20802(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z

    .line 15842
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 15843
    or-int/lit8 v2, v2, 0x20

    .line 15845
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$20902(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z

    .line 15846
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 15847
    or-int/lit8 v2, v2, 0x40

    .line 15849
    :cond_5c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnAlbumInfo_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnAlbumInfo_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$21002(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z

    .line 15850
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 15851
    or-int/lit16 v2, v2, 0x80

    .line 15853
    :cond_69
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnPhotos_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnPhotos_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$21102(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z

    .line 15854
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 15855
    or-int/lit16 v2, v2, 0x100

    .line 15857
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$21202(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 15858
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->access$21302(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;I)I

    .line 15859
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15754
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15754
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 15770
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15771
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->id_:J

    .line 15772
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15773
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->ownerGaiaId_:J

    .line 15774
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15776
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15777
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnUrls_:Z

    .line 15778
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15779
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnComments_:Z

    .line 15780
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15781
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnShapes_:Z

    .line 15782
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15783
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnAlbumInfo_:Z

    .line 15784
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnPhotos_:Z

    .line 15786
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15787
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 15788
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15789
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 16037
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16038
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16040
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3

    .prologue
    .line 15985
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15986
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->id_:J

    .line 15988
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3

    .prologue
    .line 16006
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16007
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->ownerGaiaId_:J

    .line 16009
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 16190
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 16192
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16193
    return-object p0
.end method

.method public clearReturnAlbumInfo()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 16126
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnAlbumInfo_:Z

    .line 16129
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16084
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnComments_:Z

    .line 16087
    return-object p0
.end method

.method public clearReturnPhotos()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 16147
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnPhotos_:Z

    .line 16150
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16105
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnShapes_:Z

    .line 16108
    return-object p0
.end method

.method public clearReturnUrls()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16063
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16064
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnUrls_:Z

    .line 16066
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15754
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15754
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3

    .prologue
    .line 15793
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

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
    .line 15754
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15754
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15754
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    .registers 2

    .prologue
    .line 15797
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 16018
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16019
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 16020
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 16021
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16024
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

.method public getId()J
    .registers 3

    .prologue
    .line 15976
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->id_:J

    return-wide v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 15997
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 16159
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnAlbumInfo()Z
    .registers 2

    .prologue
    .line 16117
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnAlbumInfo_:Z

    return v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16075
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnPhotos()Z
    .registers 2

    .prologue
    .line 16138
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnPhotos_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16096
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16054
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnUrls_:Z

    return v0
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 16015
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15973
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 15994
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 16156
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public hasReturnAlbumInfo()Z
    .registers 3

    .prologue
    .line 16114
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16072
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public hasReturnPhotos()Z
    .registers 3

    .prologue
    .line 16135
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16093
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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
    .line 16051
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 15895
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
    .line 15754
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 15754
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

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
    .line 15754
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15903
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 15904
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_94

    .line 15909
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15911
    :sswitch_d
    return-object p0

    .line 15916
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15917
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->id_:J

    goto :goto_0

    .line 15921
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15922
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 15926
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15927
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnUrls_:Z

    goto :goto_0

    .line 15931
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15932
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnComments_:Z

    goto :goto_0

    .line 15936
    :sswitch_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15937
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnShapes_:Z

    goto :goto_0

    .line 15941
    :sswitch_4f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15942
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnAlbumInfo_:Z

    goto :goto_0

    .line 15946
    :sswitch_5c
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 15947
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->hasPhotoOptions()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 15948
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 15950
    :cond_6d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15951
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    goto :goto_0

    .line 15955
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    :sswitch_78
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15956
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 15960
    :sswitch_86
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15961
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnPhotos_:Z

    goto/16 :goto_0

    .line 15904
    :sswitch_data_94
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
        0x3a -> :sswitch_5c
        0x42 -> :sswitch_78
        0x48 -> :sswitch_86
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 15863
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15891
    :cond_6
    :goto_6
    return-object p0

    .line 15864
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15865
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15867
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 15868
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15870
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 15871
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15873
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasReturnUrls()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 15874
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getReturnUrls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15876
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 15877
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15879
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 15880
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15882
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasReturnAlbumInfo()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 15883
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getReturnAlbumInfo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setReturnAlbumInfo(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15885
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasReturnPhotos()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 15886
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getReturnPhotos()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->setReturnPhotos(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    .line 15888
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15889
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    goto :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 16178
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 16180
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 16186
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16187
    return-object p0

    .line 16183
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16028
    if-nez p1, :cond_8

    .line 16029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16031
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16032
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16034
    return-object p0
.end method

.method public setId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15979
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 15980
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->id_:J

    .line 15982
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 16000
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16001
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->ownerGaiaId_:J

    .line 16003
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 16172
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 16174
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16175
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16162
    if-nez p1, :cond_8

    .line 16163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16165
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 16167
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16168
    return-object p0
.end method

.method public setReturnAlbumInfo(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16120
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16121
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnAlbumInfo_:Z

    .line 16123
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16078
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16079
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnComments_:Z

    .line 16081
    return-object p0
.end method

.method public setReturnPhotos(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16141
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16142
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnPhotos_:Z

    .line 16144
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16099
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16100
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnShapes_:Z

    .line 16102
    return-object p0
.end method

.method public setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16057
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->bitField0_:I

    .line 16058
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->returnUrls_:Z

    .line 16060
    return-object p0
.end method
