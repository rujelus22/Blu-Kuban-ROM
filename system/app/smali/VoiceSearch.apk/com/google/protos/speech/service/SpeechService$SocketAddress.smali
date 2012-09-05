.class public final Lcom/google/protos/speech/service/SpeechService$SocketAddress;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SocketAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocketAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$SocketAddress;


# instance fields
.field private bitField0_:I

.field private host_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private port_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1356
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 1709
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 1710
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->initFields()V

    .line 1711
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 1317
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1419
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    .line 1447
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedSerializedSize:I

    .line 1318
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->initFields()V

    .line 1319
    const/4 v2, 0x0

    .line 1321
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1322
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 1323
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1324
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 1329
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1331
    const/4 v0, 0x1

    goto :goto_d

    .line 1326
    :sswitch_1e
    const/4 v0, 0x1

    .line 1327
    goto :goto_d

    .line 1336
    :sswitch_20
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    .line 1337
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 1347
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 1348
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 1353
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->makeExtensionsImmutable()V

    throw v4

    .line 1341
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    .line 1342
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 1349
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 1350
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 1353
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->makeExtensionsImmutable()V

    .line 1355
    return-void

    .line 1324
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x10 -> :sswitch_38
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1295
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1300
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1419
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    .line 1447
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedSerializedSize:I

    .line 1302
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1295
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1303
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1419
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    .line 1447
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedSerializedSize:I

    .line 1303
    return-void
.end method

.method static synthetic access$1500(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/protos/speech/service/SpeechService$SocketAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/protos/speech/service/SpeechService$SocketAddress;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1295
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/google/protos/speech/service/SpeechService$SocketAddress;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1295
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .registers 1

    .prologue
    .line 1307
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    .line 1417
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I

    .line 1418
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .registers 1

    .prologue
    .line 1524
    #calls: Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->access$1300()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1527
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .registers 2

    .prologue
    .line 1311
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1379
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    .line 1380
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1381
    check-cast v1, Ljava/lang/String;

    .line 1389
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1383
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1385
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1386
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1387
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1389
    goto :goto_8
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1394
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    .line 1395
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1396
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1398
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;

    .line 1401
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

.method public getPort()I
    .registers 2

    .prologue
    .line 1412
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1449
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedSerializedSize:I

    .line 1450
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 1462
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 1452
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 1453
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 1454
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getHostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1457
    :cond_19
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 1458
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1461
    :cond_26
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedSerializedSize:I

    move v1, v0

    .line 1462
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasHost()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1376
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPort()Z
    .registers 3

    .prologue
    .line 1409
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1421
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    .line 1422
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 1433
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 1422
    goto :goto_9

    .line 1424
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->hasHost()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1425
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    move v1, v2

    .line 1426
    goto :goto_9

    .line 1428
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->hasPort()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1429
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    move v1, v2

    .line 1430
    goto :goto_9

    .line 1432
    :cond_20
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .registers 2

    .prologue
    .line 1525
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .registers 2

    .prologue
    .line 1529
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

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
    .line 1468
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

    .line 1438
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getSerializedSize()I

    .line 1439
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 1440
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getHostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1442
    :cond_12
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 1443
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1445
    :cond_1d
    return-void
.end method
