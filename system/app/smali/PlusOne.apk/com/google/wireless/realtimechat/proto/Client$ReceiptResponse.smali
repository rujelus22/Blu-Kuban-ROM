.class public final Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReceiptResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10814
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 10815
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->initFields()V

    .line 10816
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10453
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10513
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->memoizedIsInitialized:B

    .line 10533
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->memoizedSerializedSize:I

    .line 10454
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10448
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10455
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10513
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->memoizedIsInitialized:B

    .line 10533
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->memoizedSerializedSize:I

    .line 10455
    return-void
.end method

.method static synthetic access$14502(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10448
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$14602(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10448
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14702(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10448
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 1

    .prologue
    .line 10459
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    return-object v0
.end method

.method private getRequestErrorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10498
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->requestError_:Ljava/lang/Object;

    .line 10499
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10500
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10502
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->requestError_:Ljava/lang/Object;

    .line 10505
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
    .line 10510
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 10511
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->requestError_:Ljava/lang/Object;

    .line 10512
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    .registers 1

    .prologue
    .line 10625
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->access$14300()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10628
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10448
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 2

    .prologue
    .line 10463
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10484
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->requestError_:Ljava/lang/Object;

    .line 10485
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10486
    check-cast v1, Ljava/lang/String;

    .line 10494
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10488
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10490
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10491
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10492
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 10494
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10535
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->memoizedSerializedSize:I

    .line 10536
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 10548
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 10538
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 10539
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 10540
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10543
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 10544
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10547
    :cond_2a
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 10548
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 10474
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 10481
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10471
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->bitField0_:I

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

    .line 10515
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->memoizedIsInitialized:B

    .line 10516
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 10519
    :goto_8
    return v1

    .line 10516
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 10518
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->memoizedIsInitialized:B

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
    .line 10555
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

    .line 10524
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getSerializedSize()I

    .line 10525
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 10526
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10528
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 10529
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10531
    :cond_21
    return-void
.end method
