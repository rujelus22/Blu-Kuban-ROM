.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$LatLngOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLng"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;


# instance fields
.field private bitField0_:I

.field private latitudeE7_:I

.field private longitudeE7_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1322
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    .line 1602
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;-><init>(Z)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 1603
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->initFields()V

    .line 1604
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

    .line 1283
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1362
    iput-byte v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedIsInitialized:B

    .line 1382
    iput v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedSerializedSize:I

    .line 1284
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->initFields()V

    .line 1285
    const/4 v2, 0x0

    .line 1287
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1288
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 1289
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1290
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 1295
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1297
    const/4 v0, 0x1

    goto :goto_d

    .line 1292
    :sswitch_1e
    const/4 v0, 0x1

    .line 1293
    goto :goto_d

    .line 1302
    :sswitch_20
    iget v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    .line 1303
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 1313
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 1314
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 1319
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->makeExtensionsImmutable()V

    throw v4

    .line 1307
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    .line 1308
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 1315
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 1316
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

    .line 1319
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->makeExtensionsImmutable()V

    .line 1321
    return-void

    .line 1290
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0xd -> :sswitch_20
        0x15 -> :sswitch_38
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
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
    .line 1261
    invoke-direct {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1266
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1362
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedIsInitialized:B

    .line 1382
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedSerializedSize:I

    .line 1268
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1261
    invoke-direct {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1269
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1362
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedIsInitialized:B

    .line 1382
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedSerializedSize:I

    .line 1269
    return-void
.end method

.method static synthetic access$1202(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1261
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1261
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1261
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .registers 1

    .prologue
    .line 1273
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1359
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    .line 1360
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    .line 1361
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .registers 1

    .prologue
    .line 1459
    #calls: Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->access$1000()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1462
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .registers 2

    .prologue
    .line 1277
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLatitudeE7()I
    .registers 2

    .prologue
    .line 1345
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .registers 2

    .prologue
    .line 1355
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1384
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedSerializedSize:I

    .line 1385
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 1397
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 1387
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 1388
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 1389
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1392
    :cond_17
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 1393
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1396
    :cond_24
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedSerializedSize:I

    move v1, v0

    .line 1397
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasLatitudeE7()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1342
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLongitudeE7()Z
    .registers 3

    .prologue
    .line 1352
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

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

    .line 1364
    iget-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedIsInitialized:B

    .line 1365
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1368
    :goto_8
    return v1

    .line 1365
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1367
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .registers 2

    .prologue
    .line 1460
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .registers 2

    .prologue
    .line 1464
    invoke-static {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

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
    .line 1403
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

    .line 1373
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getSerializedSize()I

    .line 1374
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 1375
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32(II)V

    .line 1377
    :cond_10
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 1378
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32(II)V

    .line 1380
    :cond_1b
    return-void
.end method
