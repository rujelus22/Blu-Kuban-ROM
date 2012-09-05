.class public final Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReverseGeocode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

.field private static final serialVersionUID:J


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22769
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    .line 22770
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->initFields()V

    .line 22771
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22367
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22468
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->memoizedIsInitialized:B

    .line 22488
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->memoizedSerializedSize:I

    .line 22368
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22362
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22369
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22468
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->memoizedIsInitialized:B

    .line 22488
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->memoizedSerializedSize:I

    .line 22369
    return-void
.end method

.method static synthetic access$30702(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22362
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30802(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22362
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    return-object p1
.end method

.method static synthetic access$30902(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22362
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->bitField0_:I

    return p1
.end method

.method private getAddressBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22443
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->address_:Ljava/lang/Object;

    .line 22444
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22445
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22447
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->address_:Ljava/lang/Object;

    .line 22450
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 1

    .prologue
    .line 22373
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 22465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->address_:Ljava/lang/Object;

    .line 22466
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 22467
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 1

    .prologue
    .line 22580
    #calls: Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->access$30500()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 22583
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22429
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->address_:Ljava/lang/Object;

    .line 22430
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22431
    check-cast v1, Ljava/lang/String;

    .line 22439
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22433
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22435
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22436
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22437
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->address_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22439
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22362
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 2

    .prologue
    .line 22377
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    return-object v0
.end method

.method public getGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
    .registers 2

    .prologue
    .line 22461
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 22490
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->memoizedSerializedSize:I

    .line 22491
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 22503
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 22493
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 22494
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 22495
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22498
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 22499
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 22502
    :cond_2a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->memoizedSerializedSize:I

    move v1, v0

    .line 22503
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAddress()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22426
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasGranularity()Z
    .registers 3

    .prologue
    .line 22458
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->bitField0_:I

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

    .line 22470
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->memoizedIsInitialized:B

    .line 22471
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 22474
    :goto_8
    return v1

    .line 22471
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 22473
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->memoizedIsInitialized:B

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
    .line 22510
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

    .line 22479
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getSerializedSize()I

    .line 22480
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 22481
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22483
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 22484
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 22486
    :cond_21
    return-void
.end method
