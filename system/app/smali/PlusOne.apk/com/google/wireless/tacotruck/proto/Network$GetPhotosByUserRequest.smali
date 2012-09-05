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
    .line 17472
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    .line 17473
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->initFields()V

    .line 17474
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 16631
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16801
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedIsInitialized:B

    .line 16845
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedSerializedSize:I

    .line 16632
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16626
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16633
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16801
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedIsInitialized:B

    .line 16845
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedSerializedSize:I

    .line 16633
    return-void
.end method

.method static synthetic access$22402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16626
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$22502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16626
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16626
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnUrls_:Z

    return p1
.end method

.method static synthetic access$22702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16626
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnComments_:Z

    return p1
.end method

.method static synthetic access$22802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16626
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnShapes_:Z

    return p1
.end method

.method static synthetic access$22902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16626
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->includeDeleted_:Z

    return p1
.end method

.method static synthetic access$23002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16626
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ifModifiedSince_:J

    return-wide p1
.end method

.method static synthetic access$23102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16626
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resultsPerPage_:I

    return p1
.end method

.method static synthetic access$23202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16626
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16626
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object p1
.end method

.method static synthetic access$23402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16626
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
    .registers 1

    .prologue
    .line 16637
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 16676
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16677
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 16678
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16680
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16683
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
    .line 16768
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;

    .line 16769
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 16770
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16772
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;

    .line 16775
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

    .line 16790
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ownerGaiaId_:J

    .line 16791
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16792
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnUrls_:Z

    .line 16793
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnComments_:Z

    .line 16794
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnShapes_:Z

    .line 16795
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->includeDeleted_:Z

    .line 16796
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ifModifiedSince_:J

    .line 16797
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resultsPerPage_:I

    .line 16798
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;

    .line 16799
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 16800
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16626
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;
    .registers 2

    .prologue
    .line 16641
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 16662
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 16663
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 16664
    check-cast v1, Ljava/lang/String;

    .line 16672
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 16666
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 16668
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 16669
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 16670
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 16672
    goto :goto_8
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 16734
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ifModifiedSince_:J

    return-wide v0
.end method

.method public getIncludeDeleted()Z
    .registers 2

    .prologue
    .line 16724
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->includeDeleted_:Z

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 16652
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 16786
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getResultsPerPage()I
    .registers 2

    .prologue
    .line 16744
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resultsPerPage_:I

    return v0
.end method

.method public getResumeToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 16754
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;

    .line 16755
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 16756
    check-cast v1, Ljava/lang/String;

    .line 16764
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 16758
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 16760
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 16761
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 16762
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resumeToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 16764
    goto :goto_8
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16704
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16714
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16694
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

    .line 16847
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedSerializedSize:I

    .line 16848
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 16892
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 16850
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 16851
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1a

    .line 16852
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ownerGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 16855
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_27

    .line 16856
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnUrls_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 16859
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_35

    .line 16860
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnComments_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 16863
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 16864
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnShapes_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 16867
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_54

    .line 16868
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->includeDeleted_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 16871
    :cond_54
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_64

    .line 16872
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ifModifiedSince_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 16875
    :cond_64
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_74

    .line 16876
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resultsPerPage_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 16879
    :cond_74
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_85

    .line 16880
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16883
    :cond_85
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_96

    .line 16884
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16887
    :cond_96
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_a7

    .line 16888
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16891
    :cond_a7
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 16892
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 16659
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
    .line 16731
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
    .line 16721
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

    .line 16649
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
    .line 16783
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
    .line 16741
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
    .line 16751
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
    .line 16701
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
    .line 16711
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
    .line 16691
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

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 16899
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

    .line 16812
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getSerializedSize()I

    .line 16813
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_13

    .line 16814
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16816
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_1e

    .line 16817
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnUrls_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16819
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_2a

    .line 16820
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnComments_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16822
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 16823
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->returnShapes_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16825
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_45

    .line 16826
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->includeDeleted_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16828
    :cond_45
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_53

    .line 16829
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->ifModifiedSince_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16831
    :cond_53
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_61

    .line 16832
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->resultsPerPage_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 16834
    :cond_61
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_70

    .line 16835
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16837
    :cond_70
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_7f

    .line 16838
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16840
    :cond_7f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_8e

    .line 16841
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16843
    :cond_8e
    return-void
.end method
