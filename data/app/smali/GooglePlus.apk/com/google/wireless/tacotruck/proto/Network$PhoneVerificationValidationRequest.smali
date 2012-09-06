.class public final Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneVerificationValidationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private idvGaiaId_:Ljava/lang/Object;

.field private idvPin_:Ljava/lang/Object;

.field private idvRequestId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51853
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    .line 51854
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->initFields()V

    .line 51855
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 51372
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 51487
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedIsInitialized:B

    .line 51510
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedSerializedSize:I

    .line 51373
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51367
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 51374
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 51487
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedIsInitialized:B

    .line 51510
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedSerializedSize:I

    .line 51374
    return-void
.end method

.method static synthetic access$72702(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51367
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$72802(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51367
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$72902(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51367
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$73002(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51367
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
    .registers 1

    .prologue
    .line 51378
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    return-object v0
.end method

.method private getIdvGaiaIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 51471
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;

    .line 51472
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 51473
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 51475
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;

    .line 51478
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

.method private getIdvPinBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 51439
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;

    .line 51440
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 51441
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 51443
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;

    .line 51446
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

.method private getIdvRequestIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 51407
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;

    .line 51408
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 51409
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 51411
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;

    .line 51414
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
    .line 51483
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;

    .line 51484
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;

    .line 51485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;

    .line 51486
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 1

    .prologue
    .line 51606
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->access$72500()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 51609
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 51367
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;
    .registers 2

    .prologue
    .line 51382
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;

    return-object v0
.end method

.method public getIdvGaiaId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 51457
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;

    .line 51458
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 51459
    check-cast v1, Ljava/lang/String;

    .line 51467
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 51461
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 51463
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 51464
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 51465
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvGaiaId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 51467
    goto :goto_8
.end method

.method public getIdvPin()Ljava/lang/String;
    .registers 5

    .prologue
    .line 51425
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;

    .line 51426
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 51427
    check-cast v1, Ljava/lang/String;

    .line 51435
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 51429
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 51431
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 51432
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 51433
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvPin_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 51435
    goto :goto_8
.end method

.method public getIdvRequestId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 51393
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;

    .line 51394
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 51395
    check-cast v1, Ljava/lang/String;

    .line 51403
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 51397
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 51399
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 51400
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 51401
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->idvRequestId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 51403
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 51512
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedSerializedSize:I

    .line 51513
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 51529
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 51515
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 51516
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 51517
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 51520
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 51521
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvPinBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 51524
    :cond_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 51525
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 51528
    :cond_39
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 51529
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasIdvGaiaId()Z
    .registers 3

    .prologue
    .line 51454
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

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

.method public hasIdvPin()Z
    .registers 3

    .prologue
    .line 51422
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

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

.method public hasIdvRequestId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 51390
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

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

    .line 51489
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedIsInitialized:B

    .line 51490
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 51493
    :goto_8
    return v1

    .line 51490
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 51492
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 51367
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 2

    .prologue
    .line 51607
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 51367
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;
    .registers 2

    .prologue
    .line 51611
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest$Builder;

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
    .line 51536
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

    .line 51498
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getSerializedSize()I

    .line 51499
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 51500
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 51502
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 51503
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvPinBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 51505
    :cond_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 51506
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationRequest;->getIdvGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 51508
    :cond_2e
    return-void
.end method
