.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoMediaDisplay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private data_:Ljava/lang/Object;

.field private format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

.field private isPwa_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8879
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 8880
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->initFields()V

    .line 8881
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8424
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8536
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedIsInitialized:B

    .line 8559
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedSerializedSize:I

    .line 8425
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8419
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8426
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8536
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedIsInitialized:B

    .line 8559
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedSerializedSize:I

    .line 8426
    return-void
.end method

.method static synthetic access$11102(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8419
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    return-object p1
.end method

.method static synthetic access$11202(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8419
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11302(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8419
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->isPwa_:Z

    return p1
.end method

.method static synthetic access$11402(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8419
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    return p1
.end method

.method private getDataBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8510
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;

    .line 8511
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8512
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8514
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;

    .line 8517
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    .registers 1

    .prologue
    .line 8430
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 8532
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->LINKED_THUMBS:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    .line 8533
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;

    .line 8534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->isPwa_:Z

    .line 8535
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 1

    .prologue
    .line 8655
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->access$10900()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8658
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8496
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;

    .line 8497
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8498
    check-cast v1, Ljava/lang/String;

    .line 8506
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8500
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8502
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8503
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8504
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8506
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8419
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    .registers 2

    .prologue
    .line 8434
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    return-object v0
.end method

.method public getFormat()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    .registers 2

    .prologue
    .line 8486
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    return-object v0
.end method

.method public getIsPwa()Z
    .registers 2

    .prologue
    .line 8528
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->isPwa_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8561
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedSerializedSize:I

    .line 8562
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 8578
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 8564
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 8565
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 8566
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8569
    :cond_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 8570
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8573
    :cond_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 8574
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->isPwa_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8577
    :cond_39
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedSerializedSize:I

    move v1, v0

    .line 8578
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasData()Z
    .registers 3

    .prologue
    .line 8493
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

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

.method public hasFormat()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8483
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasIsPwa()Z
    .registers 3

    .prologue
    .line 8525
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

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

    .line 8538
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedIsInitialized:B

    .line 8539
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8542
    :goto_8
    return v1

    .line 8539
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8541
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8419
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 2

    .prologue
    .line 8656
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8419
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 2

    .prologue
    .line 8660
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

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
    .line 8585
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

    .line 8547
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getSerializedSize()I

    .line 8548
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 8549
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8551
    :cond_14
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 8552
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8554
    :cond_21
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 8555
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->isPwa_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8557
    :cond_2e
    return-void
.end method
