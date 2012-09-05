.class public final Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$StubbyInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StubbyInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private senderId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3877
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 3878
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->initFields()V

    .line 3879
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3391
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3466
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->memoizedIsInitialized:B

    .line 3489
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->memoizedSerializedSize:I

    .line 3392
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3386
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;-><init>(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3393
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3466
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->memoizedIsInitialized:B

    .line 3489
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->memoizedSerializedSize:I

    .line 3393
    return-void
.end method

.method static synthetic access$4902(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3386
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3386
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3386
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3386
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 1

    .prologue
    .line 3397
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3426
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->senderId_:Ljava/lang/Object;

    .line 3427
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3428
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3430
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->senderId_:Ljava/lang/Object;

    .line 3433
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
    .line 3462
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->senderId_:Ljava/lang/Object;

    .line 3463
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 3464
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 3465
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 1

    .prologue
    .line 3590
    #calls: Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->access$4700()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3593
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientVersion()Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 2

    .prologue
    .line 3458
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3386
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 3401
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 3448
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 3445
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3442
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3412
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->senderId_:Ljava/lang/Object;

    .line 3413
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3414
    check-cast v1, Ljava/lang/String;

    .line 3422
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3416
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3418
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3419
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3420
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3422
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 3491
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->memoizedSerializedSize:I

    .line 3492
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 3513
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 3494
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 3495
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_18

    .line 3496
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3500
    :cond_18
    const/4 v0, 0x0

    .line 3501
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_30

    .line 3502
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 3501
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 3505
    :cond_30
    add-int/2addr v2, v0

    .line 3506
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getRecipientIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 3508
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4b

    .line 3509
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3512
    :cond_4b
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->memoizedSerializedSize:I

    move v3, v2

    .line 3513
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public hasClientVersion()Z
    .registers 3

    .prologue
    .line 3455
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3409
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->bitField0_:I

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

    .line 3468
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->memoizedIsInitialized:B

    .line 3469
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 3472
    :goto_8
    return v1

    .line 3469
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 3471
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->memoizedIsInitialized:B

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
    .line 3520
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

    .line 3477
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getSerializedSize()I

    .line 3478
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_12

    .line 3479
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3481
    :cond_12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 3482
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3481
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 3484
    :cond_27
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_33

    .line 3485
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3487
    :cond_33
    return-void
.end method
