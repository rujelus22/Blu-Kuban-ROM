.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAlbumRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private id_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnAlbumInfo_:Z

.field private returnComments_:Z

.field private returnPhotos_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16200
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    .line 16201
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->initFields()V

    .line 16202
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15449
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15586
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedIsInitialized:B

    .line 15627
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedSerializedSize:I

    .line 15450
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15444
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15586
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedIsInitialized:B

    .line 15627
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedSerializedSize:I

    .line 15451
    return-void
.end method

.method static synthetic access$20402(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15444
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->id_:J

    return-wide p1
.end method

.method static synthetic access$20502(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15444
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$20602(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15444
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20702(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15444
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnUrls_:Z

    return p1
.end method

.method static synthetic access$20802(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15444
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnComments_:Z

    return p1
.end method

.method static synthetic access$20902(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15444
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnShapes_:Z

    return p1
.end method

.method static synthetic access$21002(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15444
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnAlbumInfo_:Z

    return p1
.end method

.method static synthetic access$21102(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15444
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnPhotos_:Z

    return p1
.end method

.method static synthetic access$21202(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15444
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object p1
.end method

.method static synthetic access$21302(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15444
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    .registers 1

    .prologue
    .line 15455
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15504
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15505
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15506
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15508
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15511
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

    .line 15576
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->id_:J

    .line 15577
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->ownerGaiaId_:J

    .line 15578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15579
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnUrls_:Z

    .line 15580
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnComments_:Z

    .line 15581
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnShapes_:Z

    .line 15582
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnAlbumInfo_:Z

    .line 15583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnPhotos_:Z

    .line 15584
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 15585
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 1

    .prologue
    .line 15747
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->access$20200()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 15750
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15444
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    .registers 2

    .prologue
    .line 15459
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 15490
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15491
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 15492
    check-cast v1, Ljava/lang/String;

    .line 15500
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 15494
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15496
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15497
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 15498
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 15500
    goto :goto_8
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 15470
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->id_:J

    return-wide v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 15480
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 15572
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnAlbumInfo()Z
    .registers 2

    .prologue
    .line 15552
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnAlbumInfo_:Z

    return v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15532
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnComments_:Z

    return v0
.end method

.method public getReturnPhotos()Z
    .registers 2

    .prologue
    .line 15562
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnPhotos_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15542
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15522
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnUrls_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 15629
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedSerializedSize:I

    .line 15630
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 15670
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 15632
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 15633
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1a

    .line 15634
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->id_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15637
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_27

    .line 15638
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->ownerGaiaId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15641
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_35

    .line 15642
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnUrls_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15645
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 15646
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnComments_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15649
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_54

    .line 15650
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnShapes_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15653
    :cond_54
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_64

    .line 15654
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnAlbumInfo_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15657
    :cond_64
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_74

    .line 15658
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15661
    :cond_74
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_83

    .line 15662
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15665
    :cond_83
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_94

    .line 15666
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnPhotos_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15669
    :cond_94
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 15670
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 15487
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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

    .line 15467
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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
    .line 15477
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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
    .line 15569
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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
    .line 15549
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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
    .line 15529
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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
    .line 15559
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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
    .line 15539
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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
    .line 15519
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 15588
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedIsInitialized:B

    .line 15589
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 15592
    :goto_8
    return v1

    .line 15589
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 15591
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15444
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 15748
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15444
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 15752
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

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
    .line 15677
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

    .line 15597
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getSerializedSize()I

    .line 15598
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_13

    .line 15599
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 15601
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1e

    .line 15602
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 15604
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_2a

    .line 15605
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnUrls_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15607
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 15608
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnComments_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15610
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_45

    .line 15611
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnShapes_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15613
    :cond_45
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_53

    .line 15614
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnAlbumInfo_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15616
    :cond_53
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_61

    .line 15617
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15619
    :cond_61
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_6e

    .line 15620
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15622
    :cond_6e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7d

    .line 15623
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnPhotos_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15625
    :cond_7d
    return-void
.end method
