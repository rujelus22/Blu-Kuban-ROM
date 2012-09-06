.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAvatarRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private enableSilhouette_:Z

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private imageSize_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private useBase64_:Z

.field private userId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9249
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    .line 9250
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->initFields()V

    .line 9251
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8736
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8829
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedIsInitialized:B

    .line 8858
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedSerializedSize:I

    .line 8737
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8731
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8738
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8829
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedIsInitialized:B

    .line 8858
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedSerializedSize:I

    .line 8738
    return-void
.end method

.method static synthetic access$11702(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8731
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->userId_:J

    return-wide p1
.end method

.method static synthetic access$11802(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8731
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11902(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8731
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->useBase64_:Z

    return p1
.end method

.method static synthetic access$12002(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8731
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->imageSize_:I

    return p1
.end method

.method static synthetic access$12102(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8731
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->enableSilhouette_:Z

    return p1
.end method

.method static synthetic access$12202(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8731
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;
    .registers 1

    .prologue
    .line 8742
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    return-object v0
.end method

.method private getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8781
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8782
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8783
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8785
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8788
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
    .registers 3

    .prologue
    .line 8823
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->userId_:J

    .line 8824
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->useBase64_:Z

    .line 8826
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->imageSize_:I

    .line 8827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->enableSilhouette_:Z

    .line 8828
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 1

    .prologue
    .line 8962
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->access$11500()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8965
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8731
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;
    .registers 2

    .prologue
    .line 8746
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    return-object v0
.end method

.method public getEnableSilhouette()Z
    .registers 2

    .prologue
    .line 8819
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->enableSilhouette_:Z

    return v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8767
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8768
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8769
    check-cast v1, Ljava/lang/String;

    .line 8777
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8771
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8773
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8774
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8775
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8777
    goto :goto_8
.end method

.method public getImageSize()I
    .registers 2

    .prologue
    .line 8809
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->imageSize_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 8860
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedSerializedSize:I

    .line 8861
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 8885
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 8863
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 8864
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 8865
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->userId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8868
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_25

    .line 8869
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->useBase64_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8872
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_35

    .line 8873
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->imageSize_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8876
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 8877
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->enableSilhouette_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8880
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_54

    .line 8881
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8884
    :cond_54
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 8885
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getUseBase64()Z
    .registers 2

    .prologue
    .line 8799
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->useBase64_:Z

    return v0
.end method

.method public getUserId()J
    .registers 3

    .prologue
    .line 8757
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->userId_:J

    return-wide v0
.end method

.method public hasEnableSilhouette()Z
    .registers 3

    .prologue
    .line 8816
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 8764
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

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

.method public hasImageSize()Z
    .registers 3

    .prologue
    .line 8806
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

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

.method public hasUseBase64()Z
    .registers 3

    .prologue
    .line 8796
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

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

.method public hasUserId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8754
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

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

    .line 8831
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedIsInitialized:B

    .line 8832
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8835
    :goto_8
    return v1

    .line 8832
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8834
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8731
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 2

    .prologue
    .line 8963
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8731
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 2

    .prologue
    .line 8967
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

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
    .line 8892
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8840
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getSerializedSize()I

    .line 8841
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 8842
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->userId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 8844
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_1c

    .line 8845
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->useBase64_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8847
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2a

    .line 8848
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->imageSize_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8850
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 8851
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->enableSilhouette_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8853
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_45

    .line 8854
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8856
    :cond_45
    return-void
.end method
