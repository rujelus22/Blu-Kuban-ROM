.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private displayDelayMs_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33886
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 33887
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->initFields()V

    .line 33888
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33320
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 33486
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedIsInitialized:B

    .line 33512
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedSerializedSize:I

    .line 33321
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33315
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33322
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33486
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedIsInitialized:B

    .line 33512
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedSerializedSize:I

    .line 33322
    return-void
.end method

.method static synthetic access$45602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33315
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    return-object p1
.end method

.method static synthetic access$45702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33315
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33315
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33315
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->displayDelayMs_:I

    return p1
.end method

.method static synthetic access$46002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33315
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 1

    .prologue
    .line 33326
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method private getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33427
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;

    .line 33428
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33429
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33431
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;

    .line 33434
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

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33459
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;

    .line 33460
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33461
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33463
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;

    .line 33466
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
    .line 33481
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CHANGE_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 33482
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;

    .line 33483
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;

    .line 33484
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->displayDelayMs_:I

    .line 33485
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 1

    .prologue
    .line 33612
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->access$45400()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 33615
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33315
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2

    .prologue
    .line 33330
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public getDisplayDelayMs()I
    .registers 2

    .prologue
    .line 33477
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->displayDelayMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 33514
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedSerializedSize:I

    .line 33515
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 33535
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 33517
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 33518
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 33519
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 33522
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 33523
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 33526
    :cond_2b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 33527
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 33530
    :cond_3b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 33531
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->displayDelayMs_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 33534
    :cond_4a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedSerializedSize:I

    move v1, v0

    .line 33535
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 33413
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;

    .line 33414
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 33415
    check-cast v1, Ljava/lang/String;

    .line 33423
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 33417
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 33419
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33420
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 33421
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 33423
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    .registers 2

    .prologue
    .line 33403
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 33445
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;

    .line 33446
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 33447
    check-cast v1, Ljava/lang/String;

    .line 33455
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 33449
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 33451
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33452
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 33453
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 33455
    goto :goto_8
.end method

.method public hasDisplayDelayMs()Z
    .registers 3

    .prologue
    .line 33474
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    .line 33410
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33400
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 33442
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

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

    .line 33488
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedIsInitialized:B

    .line 33489
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 33492
    :goto_8
    return v1

    .line 33489
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 33491
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->memoizedIsInitialized:B

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
    .line 33542
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 33497
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getSerializedSize()I

    .line 33498
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 33499
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 33501
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 33502
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33504
    :cond_22
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 33505
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33507
    :cond_30
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 33508
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->displayDelayMs_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33510
    :cond_3d
    return-void
.end method
