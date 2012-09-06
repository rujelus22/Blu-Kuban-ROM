.class public final Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$StreamViewTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamViewType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private circleId_:Ljava/lang/Object;

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

.field private userGaiaId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43920
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    .line 43921
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->initFields()V

    .line 43922
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 43363
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 43520
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedIsInitialized:B

    .line 43546
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedSerializedSize:I

    .line 43364
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43358
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;-><init>(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 43365
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 43520
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedIsInitialized:B

    .line 43546
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedSerializedSize:I

    .line 43365
    return-void
.end method

.method static synthetic access$58802(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43358
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    return-object p1
.end method

.method static synthetic access$58902(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43358
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->userGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$59002(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43358
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$59102(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43358
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$59202(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43358
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    return p1
.end method

.method private getCircleIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 43503
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;

    .line 43504
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 43505
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 43507
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;

    .line 43510
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 1

    .prologue
    .line 43369
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    return-object v0
.end method

.method private getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 43471
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;

    .line 43472
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 43473
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 43475
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;

    .line 43478
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
    .line 43515
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->PERSON:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 43516
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->userGaiaId_:J

    .line 43517
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;

    .line 43518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;

    .line 43519
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 1

    .prologue
    .line 43646
    #calls: Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->access$58600()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 43649
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCircleId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 43489
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;

    .line 43490
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 43491
    check-cast v1, Ljava/lang/String;

    .line 43499
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 43493
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 43495
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 43496
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 43497
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->circleId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 43499
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43358
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 2

    .prologue
    .line 43373
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    return-object v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 43457
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;

    .line 43458
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 43459
    check-cast v1, Ljava/lang/String;

    .line 43467
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 43461
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 43463
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 43464
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 43465
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->focusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 43467
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 43548
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedSerializedSize:I

    .line 43549
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 43569
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 43551
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 43552
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 43553
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 43556
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 43557
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->userGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 43560
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3b

    .line 43561
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getCircleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43564
    :cond_3b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_4a

    .line 43565
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43568
    :cond_4a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedSerializedSize:I

    move v1, v0

    .line 43569
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    .registers 2

    .prologue
    .line 43437
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    return-object v0
.end method

.method public getUserGaiaId()J
    .registers 3

    .prologue
    .line 43447
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->userGaiaId_:J

    return-wide v0
.end method

.method public hasCircleId()Z
    .registers 3

    .prologue
    .line 43486
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 43454
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 43434
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUserGaiaId()Z
    .registers 3

    .prologue
    .line 43444
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

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

    .line 43522
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedIsInitialized:B

    .line 43523
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 43526
    :goto_8
    return v1

    .line 43523
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 43525
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43358
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 2

    .prologue
    .line 43647
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43358
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    .registers 2

    .prologue
    .line 43651
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

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
    .line 43576
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

    .line 43531
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getSerializedSize()I

    .line 43532
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 43533
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->type_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 43535
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 43536
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->userGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 43538
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_30

    .line 43539
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getCircleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 43541
    :cond_30
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3d

    .line 43542
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 43544
    :cond_3d
    return-void
.end method
