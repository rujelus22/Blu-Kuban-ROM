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
    .line 34967
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 35214
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35355
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    .line 35391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 35427
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 34968
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maybeForceBuilderInitialization()V

    .line 34969
    return-void
.end method

.method static synthetic access$48200()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 1

    .prologue
    .line 34962
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 1

    .prologue
    .line 34974
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 34972
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    .registers 3

    .prologue
    .line 35011
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    .line 35012
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 35013
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 35015
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34962
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    .registers 6

    .prologue
    .line 35029
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 35030
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35031
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 35032
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 35033
    or-int/lit8 v2, v2, 0x1

    .line 35035
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->userGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->userGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$48402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;J)J

    .line 35036
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 35037
    or-int/lit8 v2, v2, 0x2

    .line 35039
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$48502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35040
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 35041
    or-int/lit8 v2, v2, 0x4

    .line 35043
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$48602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Z)Z

    .line 35044
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 35045
    or-int/lit8 v2, v2, 0x8

    .line 35047
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$48702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Z)Z

    .line 35048
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 35049
    or-int/lit8 v2, v2, 0x10

    .line 35051
    :cond_42
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maxPhotoCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->maxPhotoCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$48802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I

    .line 35052
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 35053
    or-int/lit8 v2, v2, 0x20

    .line 35055
    :cond_4f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedOffset_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedOffset_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$48902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I

    .line 35056
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 35057
    or-int/lit8 v2, v2, 0x40

    .line 35059
    :cond_5c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedOffset_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedOffset_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I

    .line 35060
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 35061
    or-int/lit16 v2, v2, 0x80

    .line 35063
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35064
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 35065
    or-int/lit16 v2, v2, 0x100

    .line 35067
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35068
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 35069
    or-int/lit16 v2, v2, 0x200

    .line 35071
    :cond_83
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 35072
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->access$49402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I

    .line 35073
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34962
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34962
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 34978
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 34979
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->userGaiaId_:J

    .line 34980
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 34981
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 34982
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 34983
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnShapes_:Z

    .line 34984
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 34985
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnComments_:Z

    .line 34986
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 34987
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maxPhotoCount_:I

    .line 34988
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 34989
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedOffset_:I

    .line 34990
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 34991
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedOffset_:I

    .line 34992
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 34993
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    .line 34994
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 34995
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 34996
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 34997
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 34998
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 34999
    return-object p0
.end method

.method public clearApprovedOffset()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35327
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35328
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedOffset_:I

    .line 35330
    return-object p0
.end method

.method public clearApprovedResumeToken()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2

    .prologue
    .line 35379
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35380
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getApprovedResumeToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    .line 35382
    return-object p0
.end method

.method public clearFocusObfuscatedId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2

    .prologue
    .line 35238
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35239
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35241
    return-object p0
.end method

.method public clearMaxPhotoCount()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2

    .prologue
    .line 35306
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35307
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maxPhotoCount_:I

    .line 35309
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2

    .prologue
    .line 35463
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 35465
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35466
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35285
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnComments_:Z

    .line 35288
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35264
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnShapes_:Z

    .line 35267
    return-object p0
.end method

.method public clearUnapprovedOffset()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35348
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35349
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedOffset_:I

    .line 35351
    return-object p0
.end method

.method public clearUnapprovedResumeToken()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2

    .prologue
    .line 35415
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35416
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUnapprovedResumeToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 35418
    return-object p0
.end method

.method public clearUserGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3

    .prologue
    .line 35207
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->userGaiaId_:J

    .line 35210
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 34962
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34962
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3

    .prologue
    .line 35003
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
    .line 34962
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApprovedOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedOffset_:I

    return v0
.end method

.method public getApprovedResumeToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35360
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    .line 35361
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 35362
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35363
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    .line 35366
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
    .line 34962
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34962
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    .registers 2

    .prologue
    .line 35007
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35219
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35220
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 35221
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35222
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35225
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
    .line 35297
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maxPhotoCount_:I

    return v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 35432
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35276
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35255
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnShapes_:Z

    return v0
.end method

.method public getUnapprovedOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35339
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedOffset_:I

    return v0
.end method

.method public getUnapprovedResumeToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35396
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 35397
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 35398
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35399
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 35402
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
    .line 35198
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->userGaiaId_:J

    return-wide v0
.end method

.method public hasApprovedOffset()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35315
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
    .line 35357
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
    .line 35216
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
    .line 35294
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
    .line 35429
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
    .line 35273
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
    .line 35252
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
    .line 35336
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
    .line 35393
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

    .line 35195
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 34962
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

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
    .line 34962
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
    .line 35120
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 35121
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_a2

    .line 35126
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35128
    :sswitch_d
    return-object p0

    .line 35133
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35134
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->userGaiaId_:J

    goto :goto_0

    .line 35138
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35139
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnShapes_:Z

    goto :goto_0

    .line 35143
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35144
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnComments_:Z

    goto :goto_0

    .line 35148
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35149
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maxPhotoCount_:I

    goto :goto_0

    .line 35153
    :sswitch_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35154
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedOffset_:I

    goto :goto_0

    .line 35158
    :sswitch_4f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35159
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedOffset_:I

    goto :goto_0

    .line 35163
    :sswitch_5c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35164
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    goto :goto_0

    .line 35168
    :sswitch_69
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35169
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    goto :goto_0

    .line 35173
    :sswitch_76
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 35174
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->hasPhotoOptions()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 35175
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 35177
    :cond_87
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35178
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    goto/16 :goto_0

    .line 35182
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    :sswitch_93
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35183
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 35121
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
    .line 35077
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35108
    :cond_6
    :goto_6
    return-object p0

    .line 35078
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasUserGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 35079
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUserGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35081
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasFocusObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 35082
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35084
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 35085
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35087
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 35088
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35090
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasMaxPhotoCount()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 35091
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getMaxPhotoCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35093
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasApprovedOffset()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 35094
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getApprovedOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setApprovedOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35096
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasUnapprovedOffset()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 35097
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUnapprovedOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setUnapprovedOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35099
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasApprovedResumeToken()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 35100
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getApprovedResumeToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setApprovedResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35102
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasUnapprovedResumeToken()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 35103
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUnapprovedResumeToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->setUnapprovedResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    .line 35105
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35106
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    goto/16 :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 35451
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 35453
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 35459
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35460
    return-object p0

    .line 35456
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
    .line 35321
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35322
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedOffset_:I

    .line 35324
    return-object p0
.end method

.method public setApprovedResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35370
    if-nez p1, :cond_8

    .line 35371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35373
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35374
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->approvedResumeToken_:Ljava/lang/Object;

    .line 35376
    return-object p0
.end method

.method public setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35229
    if-nez p1, :cond_8

    .line 35230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35232
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35233
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35235
    return-object p0
.end method

.method public setMaxPhotoCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35300
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35301
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->maxPhotoCount_:I

    .line 35303
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 35445
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 35447
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35448
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35435
    if-nez p1, :cond_8

    .line 35436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35438
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 35440
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35441
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35279
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35280
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnComments_:Z

    .line 35282
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35258
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35259
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->returnShapes_:Z

    .line 35261
    return-object p0
.end method

.method public setUnapprovedOffset(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35342
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35343
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedOffset_:I

    .line 35345
    return-object p0
.end method

.method public setUnapprovedResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35406
    if-nez p1, :cond_8

    .line 35407
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35409
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35410
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 35412
    return-object p0
.end method

.method public setUserGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 35201
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->bitField0_:I

    .line 35202
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->userGaiaId_:J

    .line 35204
    return-object p0
.end method
