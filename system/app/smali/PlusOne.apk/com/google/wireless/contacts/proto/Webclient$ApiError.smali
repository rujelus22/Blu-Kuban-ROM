.class public final Lcom/google/wireless/contacts/proto/Webclient$ApiError;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Webclient.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Webclient$ApiErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ApiError;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private code_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private msg_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1813
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    .line 1814
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->initFields()V

    .line 1815
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1459
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1519
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->memoizedIsInitialized:B

    .line 1539
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->memoizedSerializedSize:I

    .line 1460
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;Lcom/google/wireless/contacts/proto/Webclient$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1454
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;-><init>(Lcom/google/wireless/contacts/proto/Webclient$ApiError$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1461
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1519
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->memoizedIsInitialized:B

    .line 1539
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->memoizedSerializedSize:I

    .line 1461
    return-void
.end method

.method static synthetic access$2602(Lcom/google/wireless/contacts/proto/Webclient$ApiError;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->msg_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/google/wireless/contacts/proto/Webclient$ApiError;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1454
    iput p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->code_:I

    return p1
.end method

.method static synthetic access$2802(Lcom/google/wireless/contacts/proto/Webclient$ApiError;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1454
    iput p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$ApiError;
    .registers 1

    .prologue
    .line 1465
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    return-object v0
.end method

.method private getMsgBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1494
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->msg_:Ljava/lang/Object;

    .line 1495
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1496
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1498
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->msg_:Ljava/lang/Object;

    .line 1501
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
    .registers 2

    .prologue
    .line 1516
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->msg_:Ljava/lang/Object;

    .line 1517
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->code_:I

    .line 1518
    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 1512
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->code_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1454
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ApiError;
    .registers 2

    .prologue
    .line 1469
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ApiError;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1480
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->msg_:Ljava/lang/Object;

    .line 1481
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1482
    check-cast v1, Ljava/lang/String;

    .line 1490
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1484
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1486
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1487
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1488
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->msg_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1490
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1541
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->memoizedSerializedSize:I

    .line 1542
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 1554
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 1544
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 1545
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 1546
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->getMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1549
    :cond_19
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 1550
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->code_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1553
    :cond_26
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->memoizedSerializedSize:I

    move v1, v0

    .line 1554
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasCode()Z
    .registers 3

    .prologue
    .line 1509
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->bitField0_:I

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

.method public hasMsg()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1477
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1561
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

    .line 1530
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->getSerializedSize()I

    .line 1531
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 1532
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->getMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1534
    :cond_12
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 1535
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ApiError;->code_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1537
    :cond_1d
    return-void
.end method
