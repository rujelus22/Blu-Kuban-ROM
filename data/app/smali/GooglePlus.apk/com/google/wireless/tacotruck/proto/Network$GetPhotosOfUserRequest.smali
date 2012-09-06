.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotosOfUserRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

.field private static final serialVersionUID:J


# instance fields
.field private approvedOffset_:I

.field private approvedResumeToken_:Ljava/lang/Object;

.field private bitField0_:I

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private maxPhotoCount_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnComments_:Z

.field private returnShapes_:Z

.field private unapprovedOffset_:I

.field private unapprovedResumeToken_:Ljava/lang/Object;

.field private userGaiaId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36081
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    .line 36082
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->initFields()V

    .line 36083
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 35203
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 35395
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedIsInitialized:B

    .line 35439
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedSerializedSize:I

    .line 35204
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35198
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 35205
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 35395
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedIsInitialized:B

    .line 35439
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedSerializedSize:I

    .line 35205
    return-void
.end method

.method static synthetic access$49102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35198
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->userGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$49202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35198
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$49302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35198
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnShapes_:Z

    return p1
.end method

.method static synthetic access$49402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35198
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnComments_:Z

    return p1
.end method

.method static synthetic access$49502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35198
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->maxPhotoCount_:I

    return p1
.end method

.method static synthetic access$49602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35198
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedOffset_:I

    return p1
.end method

.method static synthetic access$49702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35198
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedOffset_:I

    return p1
.end method

.method static synthetic access$49802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35198
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$49902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35198
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$50002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35198
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object p1
.end method

.method static synthetic access$50102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35198
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    return p1
.end method

.method private getApprovedResumeTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 35330
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;

    .line 35331
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 35332
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 35334
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;

    .line 35337
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    .registers 1

    .prologue
    .line 35209
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    return-object v0
.end method

.method private getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 35248
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35249
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 35250
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 35252
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35255
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

.method private getUnapprovedResumeTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 35362
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 35363
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 35364
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 35366
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 35369
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
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 35384
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->userGaiaId_:J

    .line 35385
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35386
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnShapes_:Z

    .line 35387
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnComments_:Z

    .line 35388
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->maxPhotoCount_:I

    .line 35389
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedOffset_:I

    .line 35390
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedOffset_:I

    .line 35391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;

    .line 35392
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 35393
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 35394
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 1

    .prologue
    .line 35563
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->access$48900()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 35566
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApprovedOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35296
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedOffset_:I

    return v0
.end method

.method public getApprovedResumeToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 35316
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;

    .line 35317
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 35318
    check-cast v1, Ljava/lang/String;

    .line 35326
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 35320
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 35322
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 35323
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 35324
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 35326
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35198
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    .registers 2

    .prologue
    .line 35213
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    return-object v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 35234
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 35235
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 35236
    check-cast v1, Ljava/lang/String;

    .line 35244
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 35238
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 35240
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 35241
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 35242
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 35244
    goto :goto_8
.end method

.method public getMaxPhotoCount()I
    .registers 2

    .prologue
    .line 35286
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->maxPhotoCount_:I

    return v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 35380
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35276
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35266
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnShapes_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 35441
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedSerializedSize:I

    .line 35442
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 35486
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 35444
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 35445
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1a

    .line 35446
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->userGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 35449
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_27

    .line 35450
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnShapes_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 35453
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_35

    .line 35454
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnComments_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 35457
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 35458
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->maxPhotoCount_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 35461
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_54

    .line 35462
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedOffset_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 35465
    :cond_54
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_64

    .line 35466
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedOffset_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 35469
    :cond_64
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_76

    .line 35470
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getApprovedResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 35473
    :cond_76
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_87

    .line 35474
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUnapprovedResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 35477
    :cond_87
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_98

    .line 35478
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 35481
    :cond_98
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_a9

    .line 35482
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 35485
    :cond_a9
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 35486
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getUnapprovedOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35306
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedOffset_:I

    return v0
.end method

.method public getUnapprovedResumeToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 35348
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 35349
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 35350
    check-cast v1, Ljava/lang/String;

    .line 35358
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 35352
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 35354
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 35355
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 35356
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 35358
    goto :goto_8
.end method

.method public getUserGaiaId()J
    .registers 3

    .prologue
    .line 35224
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->userGaiaId_:J

    return-wide v0
.end method

.method public hasApprovedOffset()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35293
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

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
    .line 35313
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

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
    .line 35231
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

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
    .line 35283
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

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
    .line 35377
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

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
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

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
    .line 35263
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

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
    .line 35303
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

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
    .line 35345
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

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

    .line 35221
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 35397
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedIsInitialized:B

    .line 35398
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 35401
    :goto_8
    return v1

    .line 35398
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 35400
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35198
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2

    .prologue
    .line 35564
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35198
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 2

    .prologue
    .line 35568
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

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
    .line 35493
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

    .line 35406
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getSerializedSize()I

    .line 35407
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_13

    .line 35408
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->userGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 35410
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_1e

    .line 35411
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnShapes_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 35413
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_2a

    .line 35414
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnComments_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 35416
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 35417
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->maxPhotoCount_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 35419
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_45

    .line 35420
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedOffset_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 35422
    :cond_45
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_53

    .line 35423
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedOffset_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 35425
    :cond_53
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_63

    .line 35426
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getApprovedResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 35428
    :cond_63
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_72

    .line 35429
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUnapprovedResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 35431
    :cond_72
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_81

    .line 35432
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35434
    :cond_81
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_90

    .line 35435
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 35437
    :cond_90
    return-void
.end method
