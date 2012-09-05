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
    .line 16981
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17228
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17390
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17426
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 16982
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->maybeForceBuilderInitialization()V

    .line 16983
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 1

    .prologue
    .line 16988
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 16986
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16976
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
    .registers 6

    .prologue
    .line 17043
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 17044
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17045
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 17046
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 17047
    or-int/lit8 v2, v2, 0x1

    .line 17049
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ownerGaiaId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ownerGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$22402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;J)J

    .line 17050
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 17051
    or-int/lit8 v2, v2, 0x2

    .line 17053
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$22502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17054
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 17055
    or-int/lit8 v2, v2, 0x4

    .line 17057
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnUrls_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnUrls_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$22602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z

    .line 17058
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 17059
    or-int/lit8 v2, v2, 0x8

    .line 17061
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnComments_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnComments_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$22702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z

    .line 17062
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 17063
    or-int/lit8 v2, v2, 0x10

    .line 17065
    :cond_42
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnShapes_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnShapes_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$22802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z

    .line 17066
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 17067
    or-int/lit8 v2, v2, 0x20

    .line 17069
    :cond_4f
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->includeDeleted_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->includeDeleted_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$22902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z

    .line 17070
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 17071
    or-int/lit8 v2, v2, 0x40

    .line 17073
    :cond_5c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ifModifiedSince_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ifModifiedSince_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;J)J

    .line 17074
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 17075
    or-int/lit16 v2, v2, 0x80

    .line 17077
    :cond_69
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resultsPerPage_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resultsPerPage_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;I)I

    .line 17078
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 17079
    or-int/lit16 v2, v2, 0x100

    .line 17081
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17082
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 17083
    or-int/lit16 v2, v2, 0x200

    .line 17085
    :cond_83
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 17086
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->access$23402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;I)I

    .line 17087
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16976
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16976
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 16992
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16993
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ownerGaiaId_:J

    .line 16994
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 16995
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16996
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 16997
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnUrls_:Z

    .line 16998
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 16999
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnComments_:Z

    .line 17000
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17001
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnShapes_:Z

    .line 17002
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17003
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->includeDeleted_:Z

    .line 17004
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17005
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ifModifiedSince_:J

    .line 17006
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17007
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resultsPerPage_:I

    .line 17008
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17009
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17010
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17011
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 17012
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17013
    return-object p0
.end method

.method public clearFocusObfuscatedOwnerId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2

    .prologue
    .line 17252
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17253
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17255
    return-object p0
.end method

.method public clearIfModifiedSince()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3

    .prologue
    .line 17362
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17363
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ifModifiedSince_:J

    .line 17365
    return-object p0
.end method

.method public clearIncludeDeleted()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2

    .prologue
    .line 17341
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->includeDeleted_:Z

    .line 17344
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3

    .prologue
    .line 17221
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ownerGaiaId_:J

    .line 17224
    return-object p0
.end method

.method public clearPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2

    .prologue
    .line 17462
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 17464
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17465
    return-object p0
.end method

.method public clearResultsPerPage()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2

    .prologue
    .line 17383
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17384
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resultsPerPage_:I

    .line 17386
    return-object p0
.end method

.method public clearResumeToken()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2

    .prologue
    .line 17414
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17415
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getResumeToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17417
    return-object p0
.end method

.method public clearReturnComments()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17299
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnComments_:Z

    .line 17302
    return-object p0
.end method

.method public clearReturnShapes()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17320
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnShapes_:Z

    .line 17323
    return-object p0
.end method

.method public clearReturnUrls()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17278
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnUrls_:Z

    .line 17281
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 16976
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16976
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3

    .prologue
    .line 17017
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
    .line 16976
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 16976
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16976
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
    .registers 2

    .prologue
    .line 17021
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17233
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17234
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17235
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17236
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17239
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
    .line 17353
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ifModifiedSince_:J

    return-wide v0
.end method

.method public getIncludeDeleted()Z
    .registers 2

    .prologue
    .line 17332
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->includeDeleted_:Z

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 17212
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 17431
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getResultsPerPage()I
    .registers 2

    .prologue
    .line 17374
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resultsPerPage_:I

    return v0
.end method

.method public getResumeToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17395
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17396
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 17397
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17398
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17401
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
    .line 17290
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17311
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17269
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnUrls_:Z

    return v0
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 17230
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
    .line 17350
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
    .line 17329
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

    .line 17209
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
    .line 17428
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
    .line 17371
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
    .line 17392
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
    .line 17287
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
    .line 17308
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
    .line 17266
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
    .line 16976
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

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
    .line 16976
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
    .line 17134
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 17135
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_a2

    .line 17140
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17142
    :sswitch_d
    return-object p0

    .line 17147
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17148
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ownerGaiaId_:J

    goto :goto_0

    .line 17152
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17153
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnUrls_:Z

    goto :goto_0

    .line 17157
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17158
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnComments_:Z

    goto :goto_0

    .line 17162
    :sswitch_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17163
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnShapes_:Z

    goto :goto_0

    .line 17167
    :sswitch_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17168
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->includeDeleted_:Z

    goto :goto_0

    .line 17172
    :sswitch_4f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17173
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ifModifiedSince_:J

    goto :goto_0

    .line 17177
    :sswitch_5c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17178
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resultsPerPage_:I

    goto :goto_0

    .line 17182
    :sswitch_69
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17183
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    goto :goto_0

    .line 17187
    :sswitch_76
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    .line 17188
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->hasPhotoOptions()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 17189
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    .line 17191
    :cond_87
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 17192
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    goto/16 :goto_0

    .line 17196
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    :sswitch_93
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17197
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17135
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
    .line 17091
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 17122
    :cond_6
    :goto_6
    return-object p0

    .line 17092
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 17093
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getOwnerGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17095
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasFocusObfuscatedOwnerId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 17096
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17098
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasReturnUrls()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 17099
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getReturnUrls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17101
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasReturnComments()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 17102
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getReturnComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17104
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasReturnShapes()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 17105
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getReturnShapes()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17107
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasIncludeDeleted()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 17108
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getIncludeDeleted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setIncludeDeleted(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17110
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasIfModifiedSince()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 17111
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getIfModifiedSince()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setIfModifiedSince(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17113
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasResultsPerPage()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 17114
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getResultsPerPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setResultsPerPage(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17116
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasResumeToken()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 17117
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getResumeToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->setResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    .line 17119
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->hasPhotoOptions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17120
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    goto/16 :goto_6
.end method

.method public mergePhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17450
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 17452
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 17458
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17459
    return-object p0

    .line 17455
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    goto :goto_20
.end method

.method public setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17243
    if-nez p1, :cond_8

    .line 17244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17246
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17247
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17249
    return-object p0
.end method

.method public setIfModifiedSince(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17356
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17357
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ifModifiedSince_:J

    .line 17359
    return-object p0
.end method

.method public setIncludeDeleted(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17335
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17336
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->includeDeleted_:Z

    .line 17338
    return-object p0
.end method

.method public setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17215
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17216
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->ownerGaiaId_:J

    .line 17218
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 17444
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 17446
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17447
    return-object p0
.end method

.method public setPhotoOptions(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17434
    if-nez p1, :cond_8

    .line 17435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17437
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 17439
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17440
    return-object p0
.end method

.method public setResultsPerPage(I)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17377
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17378
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resultsPerPage_:I

    .line 17380
    return-object p0
.end method

.method public setResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17405
    if-nez p1, :cond_8

    .line 17406
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17408
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17409
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->resumeToken_:Ljava/lang/Object;

    .line 17411
    return-object p0
.end method

.method public setReturnComments(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17293
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17294
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnComments_:Z

    .line 17296
    return-object p0
.end method

.method public setReturnShapes(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17314
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17315
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnShapes_:Z

    .line 17317
    return-object p0
.end method

.method public setReturnUrls(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17272
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->bitField0_:I

    .line 17273
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->returnUrls_:Z

    .line 17275
    return-object p0
.end method
