.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotosByUserRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private ifModifiedSince_:J

.field private includeDeleted_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private resultsPerPage_:I

.field private resumeToken_:Ljava/lang/Object;

.field private returnComments_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18080
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    .line 18081
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->initFields()V

    .line 18082
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 17239
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 17409
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedIsInitialized:B

    .line 17453
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedSerializedSize:I

    .line 17240
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17234
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 17241
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17409
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedIsInitialized:B

    .line 17453
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedSerializedSize:I

    .line 17241
    return-void
.end method

.method static synthetic access$23102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17234
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$23202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17234
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17234
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnUrls_:Z

    return p1
.end method

.method static synthetic access$23402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17234
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnComments_:Z

    return p1
.end method

.method static synthetic access$23502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17234
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnShapes_:Z

    return p1
.end method

.method static synthetic access$23602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17234
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->includeDeleted_:Z

    return p1
.end method

.method static synthetic access$23702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17234
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ifModifiedSince_:J

    return-wide p1
.end method

.method static synthetic access$23802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17234
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resultsPerPage_:I

    return p1
.end method

.method static synthetic access$23902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17234
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$24002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17234
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object p1
.end method

.method static synthetic access$24102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17234
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
    .registers 1

    .prologue
    .line 17245
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17284
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17285
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17286
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17288
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17291
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getResumeTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17376
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;

    .line 17377
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17378
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17380
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;

    .line 17383
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 17398
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ownerGaiaId_:J

    .line 17399
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17400
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnUrls_:Z

    .line 17401
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnComments_:Z

    .line 17402
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnShapes_:Z

    .line 17403
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->includeDeleted_:Z

    .line 17404
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ifModifiedSince_:J

    .line 17405
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resultsPerPage_:I

    .line 17406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;

    .line 17407
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 17408
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 1

    .prologue
    .line 17577
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->access$22900()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 17580
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17234
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
    .registers 2

    .prologue
    .line 17249
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 17270
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 17271
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 17272
    check-cast v1, Ljava/lang/String;

    .line 17280
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 17274
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17276
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17277
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 17278
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 17280
    goto :goto_8
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 17342
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ifModifiedSince_:J

    return-wide v0
.end method

.method public getIncludeDeleted()Z
    .registers 2

    .prologue
    .line 17332
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->includeDeleted_:Z

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 17260
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 17394
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getResultsPerPage()I
    .registers 2

    .prologue
    .line 17352
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resultsPerPage_:I

    return v0
.end method

.method public getResumeToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 17362
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;

    .line 17363
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 17364
    check-cast v1, Ljava/lang/String;

    .line 17372
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 17366
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17368
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17369
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 17370
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 17372
    goto :goto_8
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17312
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17322
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17302
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnUrls_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 17455
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedSerializedSize:I

    .line 17456
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 17500
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 17458
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 17459
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1a

    .line 17460
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ownerGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 17463
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_27

    .line 17464
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnUrls_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 17467
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_35

    .line 17468
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnComments_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 17471
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 17472
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnShapes_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 17475
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_54

    .line 17476
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->includeDeleted_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 17479
    :cond_54
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_64

    .line 17480
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ifModifiedSince_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 17483
    :cond_64
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_74

    .line 17484
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resultsPerPage_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 17487
    :cond_74
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_85

    .line 17488
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17491
    :cond_85
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_96

    .line 17492
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17495
    :cond_96
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_a7

    .line 17496
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17499
    :cond_a7
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 17500
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 17267
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

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
    .line 17339
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

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
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

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

    .line 17257
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

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
    .line 17391
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

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
    .line 17349
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

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
    .line 17359
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

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
    .line 17309
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

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
    .line 17319
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

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
    .line 17299
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 17411
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedIsInitialized:B

    .line 17412
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 17415
    :goto_8
    return v1

    .line 17412
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 17414
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17234
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2

    .prologue
    .line 17578
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17234
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;
    .registers 2

    .prologue
    .line 17582
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 17507
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 17420
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getSerializedSize()I

    .line 17421
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_13

    .line 17422
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17424
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_1e

    .line 17425
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnUrls_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17427
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_2a

    .line 17428
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnComments_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17430
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 17431
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnShapes_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17433
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_45

    .line 17434
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->includeDeleted_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17436
    :cond_45
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_53

    .line 17437
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ifModifiedSince_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17439
    :cond_53
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_61

    .line 17440
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resultsPerPage_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17442
    :cond_61
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_70

    .line 17443
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17445
    :cond_70
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_7f

    .line 17446
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17448
    :cond_7f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_8e

    .line 17449
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17451
    :cond_8e
    return-void
.end method
