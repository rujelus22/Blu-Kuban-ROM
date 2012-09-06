.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private entityVersion_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerId_:Ljava/lang/Object;

.field private photoId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8701
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    .line 8702
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->initFields()V

    .line 8703
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8294
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8365
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->memoizedIsInitialized:B

    .line 8388
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->memoizedSerializedSize:I

    .line 8295
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8289
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8296
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8365
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->memoizedIsInitialized:B

    .line 8388
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->memoizedSerializedSize:I

    .line 8296
    return-void
.end method

.method static synthetic access$11002(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8289
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->ownerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11102(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8289
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->photoId_:J

    return-wide p1
.end method

.method static synthetic access$11202(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8289
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->entityVersion_:J

    return-wide p1
.end method

.method static synthetic access$11302(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8289
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
    .registers 1

    .prologue
    .line 8300
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    return-object v0
.end method

.method private getOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8329
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->ownerId_:Ljava/lang/Object;

    .line 8330
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8331
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8333
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->ownerId_:Ljava/lang/Object;

    .line 8336
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
    const-wide/16 v1, 0x0

    .line 8361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->ownerId_:Ljava/lang/Object;

    .line 8362
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->photoId_:J

    .line 8363
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->entityVersion_:J

    .line 8364
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 1

    .prologue
    .line 8484
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->access$10800()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8487
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8289
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
    .registers 2

    .prologue
    .line 8304
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    return-object v0
.end method

.method public getEntityVersion()J
    .registers 3

    .prologue
    .line 8357
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->entityVersion_:J

    return-wide v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8315
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->ownerId_:Ljava/lang/Object;

    .line 8316
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8317
    check-cast v1, Ljava/lang/String;

    .line 8325
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8319
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8321
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8322
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8323
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->ownerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8325
    goto :goto_8
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 8347
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->photoId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8390
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->memoizedSerializedSize:I

    .line 8391
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 8407
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 8393
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 8394
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 8395
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->getOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8398
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 8399
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->photoId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8402
    :cond_26
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 8403
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->entityVersion_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8406
    :cond_35
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->memoizedSerializedSize:I

    move v1, v0

    .line 8407
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasEntityVersion()Z
    .registers 3

    .prologue
    .line 8354
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->bitField0_:I

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

.method public hasOwnerId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8312
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoId()Z
    .registers 3

    .prologue
    .line 8344
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->bitField0_:I

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

    .line 8367
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->memoizedIsInitialized:B

    .line 8368
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8371
    :goto_8
    return v1

    .line 8368
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8370
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8289
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 2

    .prologue
    .line 8485
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8289
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;
    .registers 2

    .prologue
    .line 8489
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder$Builder;

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
    .line 8414
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

    .line 8376
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->getSerializedSize()I

    .line 8377
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 8378
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->getOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8380
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 8381
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->photoId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 8383
    :cond_1d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 8384
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;->entityVersion_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 8386
    :cond_2a
    return-void
.end method
