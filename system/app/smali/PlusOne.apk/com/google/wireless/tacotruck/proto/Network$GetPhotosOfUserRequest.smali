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
    .line 35473
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    .line 35474
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->initFields()V

    .line 35475
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 34595
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 34787
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedIsInitialized:B

    .line 34831
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedSerializedSize:I

    .line 34596
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34590
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 34597
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34787
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedIsInitialized:B

    .line 34831
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedSerializedSize:I

    .line 34597
    return-void
.end method

.method static synthetic access$48402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34590
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->userGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$48502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34590
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$48602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34590
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnShapes_:Z

    return p1
.end method

.method static synthetic access$48702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34590
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnComments_:Z

    return p1
.end method

.method static synthetic access$48802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34590
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->maxPhotoCount_:I

    return p1
.end method

.method static synthetic access$48902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34590
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedOffset_:I

    return p1
.end method

.method static synthetic access$49002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34590
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedOffset_:I

    return p1
.end method

.method static synthetic access$49102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34590
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$49202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34590
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$49302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34590
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object p1
.end method

.method static synthetic access$49402(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34590
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    return p1
.end method

.method private getApprovedResumeTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34722
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;

    .line 34723
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34724
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34726
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;

    .line 34729
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
    .line 34601
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    return-object v0
.end method

.method private getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34640
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 34641
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34642
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34644
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 34647
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
    .line 34754
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 34755
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34756
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34758
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 34761
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

    .line 34776
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->userGaiaId_:J

    .line 34777
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 34778
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnShapes_:Z

    .line 34779
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnComments_:Z

    .line 34780
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->maxPhotoCount_:I

    .line 34781
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedOffset_:I

    .line 34782
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedOffset_:I

    .line 34783
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;

    .line 34784
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 34785
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 34786
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    .registers 1

    .prologue
    .line 34955
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;->access$48200()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApprovedOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34688
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedOffset_:I

    return v0
.end method

.method public getApprovedResumeToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34708
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;

    .line 34709
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34710
    check-cast v1, Ljava/lang/String;

    .line 34718
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34712
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34714
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34715
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34716
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedResumeToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34718
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34590
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;
    .registers 2

    .prologue
    .line 34605
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;

    return-object v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34626
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 34627
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34628
    check-cast v1, Ljava/lang/String;

    .line 34636
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34630
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34632
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34633
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34634
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->focusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34636
    goto :goto_8
.end method

.method public getMaxPhotoCount()I
    .registers 2

    .prologue
    .line 34678
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->maxPhotoCount_:I

    return v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 34772
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34668
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34658
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

    .line 34833
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedSerializedSize:I

    .line 34834
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 34878
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 34836
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 34837
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1a

    .line 34838
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->userGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 34841
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_27

    .line 34842
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnShapes_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 34845
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_35

    .line 34846
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnComments_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 34849
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 34850
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->maxPhotoCount_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 34853
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_54

    .line 34854
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedOffset_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 34857
    :cond_54
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_64

    .line 34858
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedOffset_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 34861
    :cond_64
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_76

    .line 34862
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getApprovedResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34865
    :cond_76
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_87

    .line 34866
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUnapprovedResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34869
    :cond_87
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_98

    .line 34870
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34873
    :cond_98
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_a9

    .line 34874
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34877
    :cond_a9
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 34878
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getUnapprovedOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34698
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedOffset_:I

    return v0
.end method

.method public getUnapprovedResumeToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34740
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;

    .line 34741
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34742
    check-cast v1, Ljava/lang/String;

    .line 34750
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34744
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34746
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34747
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34748
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedResumeToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34750
    goto :goto_8
.end method

.method public getUserGaiaId()J
    .registers 3

    .prologue
    .line 34616
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->userGaiaId_:J

    return-wide v0
.end method

.method public hasApprovedOffset()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34685
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
    .line 34705
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
    .line 34623
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
    .line 34675
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
    .line 34769
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
    .line 34665
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
    .line 34655
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
    .line 34695
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
    .line 34737
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

    .line 34613
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

    .line 34789
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedIsInitialized:B

    .line 34790
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 34793
    :goto_8
    return v1

    .line 34790
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 34792
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->memoizedIsInitialized:B

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
    .line 34885
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

    .line 34798
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getSerializedSize()I

    .line 34799
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_13

    .line 34800
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->userGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 34802
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_1e

    .line 34803
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnShapes_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 34805
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_2a

    .line 34806
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->returnComments_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 34808
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 34809
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->maxPhotoCount_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 34811
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_45

    .line 34812
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->approvedOffset_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 34814
    :cond_45
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_53

    .line 34815
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->unapprovedOffset_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 34817
    :cond_53
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_63

    .line 34818
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getApprovedResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34820
    :cond_63
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_72

    .line 34821
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getUnapprovedResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34823
    :cond_72
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_81

    .line 34824
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 34826
    :cond_81
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_90

    .line 34827
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserRequest;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34829
    :cond_90
    return-void
.end method
