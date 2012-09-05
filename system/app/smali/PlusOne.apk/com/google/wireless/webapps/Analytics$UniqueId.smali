.class public final Lcom/google/wireless/webapps/Analytics$UniqueId;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Analytics.java"

# interfaces
.implements Lcom/google/wireless/webapps/Analytics$UniqueIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UniqueId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/webapps/Analytics$UniqueId;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private number_:I

.field private type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3872
    new-instance v0, Lcom/google/wireless/webapps/Analytics$UniqueId;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/webapps/Analytics$UniqueId;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$UniqueId;->defaultInstance:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 3873
    sget-object v0, Lcom/google/wireless/webapps/Analytics$UniqueId;->defaultInstance:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->initFields()V

    .line 3874
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3428
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3521
    iput-byte v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->memoizedIsInitialized:B

    .line 3544
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->memoizedSerializedSize:I

    .line 3429
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;Lcom/google/wireless/webapps/Analytics$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3423
    invoke-direct {p0, p1}, Lcom/google/wireless/webapps/Analytics$UniqueId;-><init>(Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3430
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3521
    iput-byte v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->memoizedIsInitialized:B

    .line 3544
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->memoizedSerializedSize:I

    .line 3430
    return-void
.end method

.method static synthetic access$4602(Lcom/google/wireless/webapps/Analytics$UniqueId;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3423
    iput p1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->number_:I

    return p1
.end method

.method static synthetic access$4702(Lcom/google/wireless/webapps/Analytics$UniqueId;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3423
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/wireless/webapps/Analytics$UniqueId;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3423
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/google/wireless/webapps/Analytics$UniqueId;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3423
    iput p1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 1

    .prologue
    .line 3434
    sget-object v0, Lcom/google/wireless/webapps/Analytics$UniqueId;->defaultInstance:Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3473
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->name_:Ljava/lang/Object;

    .line 3474
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3475
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3477
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->name_:Ljava/lang/Object;

    .line 3480
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

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3505
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->type_:Ljava/lang/Object;

    .line 3506
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3507
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3509
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->type_:Ljava/lang/Object;

    .line 3512
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
    .line 3517
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->number_:I

    .line 3518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->name_:Ljava/lang/Object;

    .line 3519
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->type_:Ljava/lang/Object;

    .line 3520
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 1

    .prologue
    .line 3640
    #calls: Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->create()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->access$4400()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3643
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->newBuilder()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3423
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2

    .prologue
    .line 3438
    sget-object v0, Lcom/google/wireless/webapps/Analytics$UniqueId;->defaultInstance:Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3459
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->name_:Ljava/lang/Object;

    .line 3460
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3461
    check-cast v1, Ljava/lang/String;

    .line 3469
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3463
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3465
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3466
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3467
    iput-object v2, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3469
    goto :goto_8
.end method

.method public getNumber()I
    .registers 2

    .prologue
    .line 3449
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->number_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3546
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->memoizedSerializedSize:I

    .line 3547
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 3563
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 3549
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 3550
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 3551
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->number_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3554
    :cond_17
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 3555
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3558
    :cond_26
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 3559
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3562
    :cond_37
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->memoizedSerializedSize:I

    move v1, v0

    .line 3563
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3491
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->type_:Ljava/lang/Object;

    .line 3492
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3493
    check-cast v1, Ljava/lang/String;

    .line 3501
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3495
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3497
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3498
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3499
    iput-object v2, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->type_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3501
    goto :goto_8
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 3456
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->bitField0_:I

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

.method public hasNumber()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3446
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 3488
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->bitField0_:I

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

    .line 3523
    iget-byte v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->memoizedIsInitialized:B

    .line 3524
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 3527
    :goto_8
    return v1

    .line 3524
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 3526
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->memoizedIsInitialized:B

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
    .line 3570
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

    .line 3532
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getSerializedSize()I

    .line 3533
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 3534
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->number_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3536
    :cond_10
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 3537
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3539
    :cond_1d
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$UniqueId;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 3540
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3542
    :cond_2c
    return-void
.end method
