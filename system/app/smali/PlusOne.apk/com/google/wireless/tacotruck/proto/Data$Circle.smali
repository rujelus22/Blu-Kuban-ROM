.class public final Lcom/google/wireless/tacotruck/proto/Data$Circle;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CircleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Circle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Circle;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private size_:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11885
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 11886
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Circle;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->initFields()V

    .line 11887
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11280
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11436
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedIsInitialized:B

    .line 11465
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedSerializedSize:I

    .line 11281
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11275
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11282
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11436
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedIsInitialized:B

    .line 11465
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedSerializedSize:I

    .line 11282
    return-void
.end method

.method static synthetic access$15002(Lcom/google/wireless/tacotruck/proto/Data$Circle;Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11275
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    return-object p1
.end method

.method static synthetic access$15102(Lcom/google/wireless/tacotruck/proto/Data$Circle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11275
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15202(Lcom/google/wireless/tacotruck/proto/Data$Circle;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11275
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15302(Lcom/google/wireless/tacotruck/proto/Data$Circle;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11275
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->size_:I

    return p1
.end method

.method static synthetic access$15402(Lcom/google/wireless/tacotruck/proto/Data$Circle;Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11275
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object p1
.end method

.method static synthetic access$15502(Lcom/google/wireless/tacotruck/proto/Data$Circle;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11275
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 1

    .prologue
    .line 11286
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Circle;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11366
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;

    .line 11367
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11368
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11370
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;

    .line 11373
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11398
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;

    .line 11399
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11400
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11402
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;

    .line 11405
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
    .line 11430
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->PERSONAL:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 11431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;

    .line 11432
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;

    .line 11433
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->size_:I

    .line 11434
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 11435
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 1

    .prologue
    .line 11569
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->access$14800()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 11572
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11516
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->access$14700(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2

    .prologue
    .line 11426
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11275
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 2

    .prologue
    .line 11290
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Circle;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11352
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;

    .line 11353
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11354
    check-cast v1, Ljava/lang/String;

    .line 11362
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11356
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11358
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11359
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11360
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11362
    goto :goto_8
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11384
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;

    .line 11385
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11386
    check-cast v1, Ljava/lang/String;

    .line 11394
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11388
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11390
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11391
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11392
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11394
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11467
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedSerializedSize:I

    .line 11468
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 11492
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 11470
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 11471
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 11472
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11475
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 11476
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11479
    :cond_2b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 11480
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11483
    :cond_3b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 11484
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->size_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11487
    :cond_4a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5e

    .line 11488
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11491
    :cond_5e
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedSerializedSize:I

    move v1, v0

    .line 11492
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 11416
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->size_:I

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11342
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    return-object v0
.end method

.method public hasCircleType()Z
    .registers 3

    .prologue
    .line 11423
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 11349
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 11381
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

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

.method public hasSize()Z
    .registers 3

    .prologue
    .line 11413
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

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

.method public hasType()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 11339
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

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

    .line 11438
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedIsInitialized:B

    .line 11439
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 11442
    :goto_8
    return v1

    .line 11439
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 11441
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .registers 2

    .prologue
    .line 11574
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

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
    .line 11499
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

    .line 11447
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getSerializedSize()I

    .line 11448
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 11449
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->type_:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11451
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 11452
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11454
    :cond_22
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 11455
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11457
    :cond_30
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 11458
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->size_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11460
    :cond_3d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4f

    .line 11461
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11463
    :cond_4f
    return-void
.end method
