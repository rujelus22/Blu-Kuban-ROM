.class public final Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetStreamPhotosRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private ifModifiedSince_:J

.field private maxPhotoCount_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private offset_:I

.field private ownerGaiaId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnComments_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z

.field private sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

.field private streamId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29444
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    .line 29445
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->initFields()V

    .line 29446
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 28502
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 28724
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedIsInitialized:B

    .line 28771
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedSerializedSize:I

    .line 28503
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 28504
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28724
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedIsInitialized:B

    .line 28771
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedSerializedSize:I

    .line 28504
    return-void
.end method

.method static synthetic access$39602(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$39702(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39802(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39902(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnUrls_:Z

    return p1
.end method

.method static synthetic access$40002(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnComments_:Z

    return p1
.end method

.method static synthetic access$40102(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnShapes_:Z

    return p1
.end method

.method static synthetic access$40202(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->maxPhotoCount_:I

    return p1
.end method

.method static synthetic access$40302(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->offset_:I

    return p1
.end method

.method static synthetic access$40402(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    return-object p1
.end method

.method static synthetic access$40502(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ifModifiedSince_:J

    return-wide p1
.end method

.method static synthetic access$40602(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object p1
.end method

.method static synthetic access$40702(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28497
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    .registers 1

    .prologue
    .line 28508
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28588
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 28589
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28590
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28592
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 28595
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

.method private getStreamIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28620
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;

    .line 28621
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28622
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28624
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;

    .line 28627
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

    .line 28712
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ownerGaiaId_:J

    .line 28713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 28714
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;

    .line 28715
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnUrls_:Z

    .line 28716
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnComments_:Z

    .line 28717
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnShapes_:Z

    .line 28718
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->maxPhotoCount_:I

    .line 28719
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->offset_:I

    .line 28720
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->TIMESTAMP:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 28721
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ifModifiedSince_:J

    .line 28722
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 28723
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 1

    .prologue
    .line 28899
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->access$39400()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 28902
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    .registers 2

    .prologue
    .line 28512
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 28574
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 28575
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 28576
    check-cast v1, Ljava/lang/String;

    .line 28584
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 28578
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 28580
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 28581
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 28582
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 28584
    goto :goto_8
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 28698
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ifModifiedSince_:J

    return-wide v0
.end method

.method public getMaxPhotoCount()I
    .registers 2

    .prologue
    .line 28668
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->maxPhotoCount_:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 28678
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->offset_:I

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 28564
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 28708
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28648
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28658
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28638
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnUrls_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 28773
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedSerializedSize:I

    .line 28774
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 28822
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 28776
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 28777
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1a

    .line 28778
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ownerGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28781
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_29

    .line 28782
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28785
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_37

    .line 28786
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnUrls_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28789
    :cond_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_46

    .line 28790
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnComments_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28793
    :cond_46
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_56

    .line 28794
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnShapes_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28797
    :cond_56
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_66

    .line 28798
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->maxPhotoCount_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 28801
    :cond_66
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_76

    .line 28802
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->offset_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 28805
    :cond_76
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_89

    .line 28806
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->getNumber()I

    move-result v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 28809
    :cond_89
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9a

    .line 28810
    const/16 v2, 0x9

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ifModifiedSince_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28813
    :cond_9a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_ab

    .line 28814
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28817
    :cond_ab
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_bc

    .line 28818
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28821
    :cond_bc
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 28822
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getSortBy()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    .registers 2

    .prologue
    .line 28688
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 28606
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;

    .line 28607
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 28608
    check-cast v1, Ljava/lang/String;

    .line 28616
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 28610
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 28612
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 28613
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 28614
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 28616
    goto :goto_8
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 28571
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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
    .line 28695
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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

.method public hasMaxPhotoCount()Z
    .registers 3

    .prologue
    .line 28665
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 28675
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28561
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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
    .line 28705
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

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
    .line 28645
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28655
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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
    .line 28635
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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

.method public hasSortBy()Z
    .registers 3

    .prologue
    .line 28685
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    .line 28603
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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

    .line 28726
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedIsInitialized:B

    .line 28727
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 28730
    :goto_8
    return v1

    .line 28727
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 28729
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 28900
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 28904
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

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
    .line 28829
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

    .line 28735
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getSerializedSize()I

    .line 28736
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_13

    .line 28737
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 28739
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_20

    .line 28740
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28742
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_2c

    .line 28743
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnUrls_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28745
    :cond_2c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_39

    .line 28746
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnComments_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28748
    :cond_39
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_47

    .line 28749
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnShapes_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28751
    :cond_47
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_55

    .line 28752
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->maxPhotoCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 28754
    :cond_55
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_63

    .line 28755
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->offset_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 28757
    :cond_63
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_74

    .line 28758
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->getNumber()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 28760
    :cond_74
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_83

    .line 28761
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ifModifiedSince_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 28763
    :cond_83
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_92

    .line 28764
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28766
    :cond_92
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_a1

    .line 28767
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28769
    :cond_a1
    return-void
.end method
