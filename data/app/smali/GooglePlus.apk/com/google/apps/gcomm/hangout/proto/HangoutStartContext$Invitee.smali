.class public final Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HangoutStartContext.java"

# interfaces
.implements Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InviteeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Invitee"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private profileId_:Ljava/lang/Object;

.field private profileName_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1791
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;-><init>(Z)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    .line 1792
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->initFields()V

    .line 1793
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1392
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1474
    iput-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->memoizedIsInitialized:B

    .line 1498
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->memoizedSerializedSize:I

    .line 1393
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    invoke-direct {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;-><init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1394
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1474
    iput-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->memoizedIsInitialized:B

    .line 1498
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->memoizedSerializedSize:I

    .line 1394
    return-void
.end method

.method static synthetic access$2102(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;
    .registers 1

    .prologue
    .line 1398
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    return-object v0
.end method

.method private getProfileIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1427
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileId_:Ljava/lang/Object;

    .line 1428
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1429
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1431
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileId_:Ljava/lang/Object;

    .line 1434
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

.method private getProfileNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1459
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileName_:Ljava/lang/Object;

    .line 1460
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1461
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1463
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileName_:Ljava/lang/Object;

    .line 1466
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
    .line 1471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileId_:Ljava/lang/Object;

    .line 1472
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileName_:Ljava/lang/Object;

    .line 1473
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    .registers 1

    .prologue
    .line 1590
    #calls: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->access$1900()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1593
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;
    .registers 2

    .prologue
    .line 1402
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    move-result-object v0

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1413
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileId_:Ljava/lang/Object;

    .line 1414
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1415
    check-cast v1, Ljava/lang/String;

    .line 1423
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1417
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1419
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1420
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1421
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1423
    goto :goto_8
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1445
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileName_:Ljava/lang/Object;

    .line 1446
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1447
    check-cast v1, Ljava/lang/String;

    .line 1455
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1449
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1451
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1452
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1453
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1455
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1500
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->memoizedSerializedSize:I

    .line 1501
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 1513
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 1503
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 1504
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 1505
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->getProfileIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1508
    :cond_19
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 1509
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->getProfileNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1512
    :cond_28
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->memoizedSerializedSize:I

    move v1, v0

    .line 1513
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasProfileId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1410
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasProfileName()Z
    .registers 3

    .prologue
    .line 1442
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1476
    iget-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->memoizedIsInitialized:B

    .line 1477
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 1484
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 1477
    goto :goto_9

    .line 1479
    :cond_c
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->hasProfileId()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1480
    iput-byte v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->memoizedIsInitialized:B

    move v1, v2

    .line 1481
    goto :goto_9

    .line 1483
    :cond_16
    iput-byte v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    .registers 2

    .prologue
    .line 1591
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->newBuilderForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    .registers 2

    .prologue
    .line 1595
    invoke-static {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->toBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

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
    .line 1520
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

    .line 1489
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->getSerializedSize()I

    .line 1490
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 1491
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->getProfileIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1493
    :cond_12
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 1494
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->getProfileNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1496
    :cond_1f
    return-void
.end method
