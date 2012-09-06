.class public final Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnlinePhotoId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private photoId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11925
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    .line 11926
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->initFields()V

    .line 11927
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11608
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11646
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedIsInitialized:B

    .line 11666
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedSerializedSize:I

    .line 11609
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11603
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11610
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11646
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedIsInitialized:B

    .line 11666
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedSerializedSize:I

    .line 11610
    return-void
.end method

.method static synthetic access$15302(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11603
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->photoId_:J

    return-wide p1
.end method

.method static synthetic access$15402(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11603
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$15502(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11603
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    .registers 1

    .prologue
    .line 11614
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 11643
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->photoId_:J

    .line 11644
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->ownerGaiaId_:J

    .line 11645
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 1

    .prologue
    .line 11758
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->access$15100()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 11761
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11603
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    .registers 2

    .prologue
    .line 11618
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;

    return-object v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 11639
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 11629
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->photoId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 11668
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedSerializedSize:I

    .line 11669
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 11681
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 11671
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 11672
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 11673
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->photoId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11676
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_24

    .line 11677
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->ownerGaiaId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11680
    :cond_24
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedSerializedSize:I

    move v1, v0

    .line 11681
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 11636
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

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

.method public hasPhotoId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11626
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

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

    .line 11648
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedIsInitialized:B

    .line 11649
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 11652
    :goto_8
    return v1

    .line 11649
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 11651
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11603
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 2

    .prologue
    .line 11759
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11603
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;
    .registers 2

    .prologue
    .line 11763
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId$Builder;

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
    .line 11688
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11657
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->getSerializedSize()I

    .line 11658
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 11659
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->photoId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11661
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1b

    .line 11662
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;->ownerGaiaId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11664
    :cond_1b
    return-void
.end method
