.class public final Lcom/google/wireless/tacotruck/proto/Network$Request;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Request;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private favaRequestId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestBody_:Lcom/google/protobuf/ByteString;

.field private requestId_:Ljava/lang/Object;

.field private requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 702
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Request;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$Request;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Request;

    .line 703
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Request;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$Request;->initFields()V

    .line 704
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 314
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->memoizedIsInitialized:B

    .line 340
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->memoizedSerializedSize:I

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$Request;-><init>(Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 314
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->memoizedIsInitialized:B

    .line 340
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method static synthetic access$302(Lcom/google/wireless/tacotruck/proto/Network$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/tacotruck/proto/Network$Request;Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/wireless/tacotruck/proto/Network$Request;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestBody_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/wireless/tacotruck/proto/Network$Request;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->favaRequestId_:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/wireless/tacotruck/proto/Network$Request;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$Request;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Request;

    return-object v0
.end method

.method private getRequestIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 267
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestId_:Ljava/lang/Object;

    .line 268
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 269
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 271
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestId_:Ljava/lang/Object;

    .line 274
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
    .line 309
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestId_:Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_ACTIVITIES:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 311
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestBody_:Lcom/google/protobuf/ByteString;

    .line 312
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->favaRequestId_:J

    .line 313
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 1

    .prologue
    .line 440
    #calls: Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->access$100()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$Request;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 443
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$Request;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$Request;
    .registers 2

    .prologue
    .line 45
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$Request;

    return-object v0
.end method

.method public getFavaRequestId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->favaRequestId_:J

    return-wide v0
.end method

.method public getRequestBody()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestBody_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 253
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestId_:Ljava/lang/Object;

    .line 254
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 255
    check-cast v1, Ljava/lang/String;

    .line 263
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 257
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 259
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 261
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 263
    goto :goto_8
.end method

.method public getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 342
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->memoizedSerializedSize:I

    .line 343
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 363
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 345
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 346
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 347
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 350
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 351
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 354
    :cond_2b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 355
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestBody_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 358
    :cond_39
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 359
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->favaRequestId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 362
    :cond_48
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->memoizedSerializedSize:I

    move v1, v0

    .line 363
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasFavaRequestId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

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

.method public hasRequestBody()Z
    .registers 3

    .prologue
    .line 292
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

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

.method public hasRequestId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 250
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasRequestType()Z
    .registers 3

    .prologue
    .line 282
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

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

    .line 316
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->memoizedIsInitialized:B

    .line 317
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 320
    :goto_8
    return v1

    .line 317
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 319
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 2

    .prologue
    .line 441
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    .registers 2

    .prologue
    .line 445
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$Request;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

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
    .line 370
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

    .line 325
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getSerializedSize()I

    .line 326
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 327
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$Request;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 329
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 330
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestType_:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 332
    :cond_22
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 333
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->requestBody_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 335
    :cond_2e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 336
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Request;->favaRequestId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 338
    :cond_3b
    return-void
.end method
