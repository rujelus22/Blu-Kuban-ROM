.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoPlusOneRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private like_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private photoId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22506
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    .line 22507
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->initFields()V

    .line 22508
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22136
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22185
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->memoizedIsInitialized:B

    .line 22208
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->memoizedSerializedSize:I

    .line 22137
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22131
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22138
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22185
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->memoizedIsInitialized:B

    .line 22208
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->memoizedSerializedSize:I

    .line 22138
    return-void
.end method

.method static synthetic access$30402(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22131
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->like_:Z

    return p1
.end method

.method static synthetic access$30502(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22131
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->photoId_:J

    return-wide p1
.end method

.method static synthetic access$30602(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22131
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$30702(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22131
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;
    .registers 1

    .prologue
    .line 22142
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 22181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->like_:Z

    .line 22182
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->photoId_:J

    .line 22183
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->ownerGaiaId_:J

    .line 22184
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 1

    .prologue
    .line 22304
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->access$30200()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 22307
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;
    .registers 2

    .prologue
    .line 22146
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;

    return-object v0
.end method

.method public getLike()Z
    .registers 2

    .prologue
    .line 22157
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->like_:Z

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 22177
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 22167
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->photoId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 22210
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->memoizedSerializedSize:I

    .line 22211
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 22227
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 22213
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 22214
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 22215
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->like_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 22218
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 22219
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->photoId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 22222
    :cond_24
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 22223
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->ownerGaiaId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 22226
    :cond_33
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 22227
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasLike()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22154
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->bitField0_:I

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
    .line 22174
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->bitField0_:I

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

.method public hasPhotoId()Z
    .registers 3

    .prologue
    .line 22164
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 22187
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->memoizedIsInitialized:B

    .line 22188
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 22191
    :goto_8
    return v1

    .line 22188
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 22190
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 22305
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;
    .registers 2

    .prologue
    .line 22309
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest$Builder;

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
    .line 22234
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 22196
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->getSerializedSize()I

    .line 22197
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 22198
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->like_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22200
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 22201
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->photoId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 22203
    :cond_1b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    .line 22204
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 22206
    :cond_28
    return-void
.end method
