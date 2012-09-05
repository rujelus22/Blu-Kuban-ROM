.class public final Lcom/google/wireless/tacotruck/proto/Data$Mention;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MentionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mention"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Mention;

.field private static final serialVersionUID:J


# instance fields
.field private aggregateId_:Ljava/lang/Object;

.field private bitField0_:I

.field private index_:I

.field private length_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5769
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Mention;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Mention;

    .line 5770
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Mention;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->initFields()V

    .line 5771
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5362
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5433
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedIsInitialized:B

    .line 5456
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedSerializedSize:I

    .line 5363
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5357
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5364
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5433
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedIsInitialized:B

    .line 5456
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedSerializedSize:I

    .line 5364
    return-void
.end method

.method static synthetic access$7002(Lcom/google/wireless/tacotruck/proto/Data$Mention;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5357
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->index_:I

    return p1
.end method

.method static synthetic access$7102(Lcom/google/wireless/tacotruck/proto/Data$Mention;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5357
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->length_:I

    return p1
.end method

.method static synthetic access$7202(Lcom/google/wireless/tacotruck/proto/Data$Mention;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5357
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/google/wireless/tacotruck/proto/Data$Mention;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5357
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    return p1
.end method

.method private getAggregateIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5417
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;

    .line 5418
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5419
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5421
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;

    .line 5424
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 1

    .prologue
    .line 5368
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Mention;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 5429
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->index_:I

    .line 5430
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->length_:I

    .line 5431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;

    .line 5432
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 1

    .prologue
    .line 5552
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->access$6800()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAggregateId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5403
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;

    .line 5404
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5405
    check-cast v1, Ljava/lang/String;

    .line 5413
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 5407
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5409
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5410
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5411
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 5413
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 2

    .prologue
    .line 5372
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Mention;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 5383
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->index_:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 5393
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->length_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5458
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedSerializedSize:I

    .line 5459
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 5475
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 5461
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 5462
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 5463
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->index_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5466
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 5467
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->length_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5470
    :cond_24
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 5471
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getAggregateIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5474
    :cond_35
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedSerializedSize:I

    move v1, v0

    .line 5475
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAggregateId()Z
    .registers 3

    .prologue
    .line 5400
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

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

.method public hasIndex()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5380
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLength()Z
    .registers 3

    .prologue
    .line 5390
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

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

    .line 5435
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedIsInitialized:B

    .line 5436
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 5439
    :goto_8
    return v1

    .line 5436
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 5438
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->memoizedIsInitialized:B

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
    .line 5482
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

    .line 5444
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getSerializedSize()I

    .line 5445
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 5446
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->index_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5448
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 5449
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->length_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5451
    :cond_1b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 5452
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getAggregateIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5454
    :cond_2a
    return-void
.end method
