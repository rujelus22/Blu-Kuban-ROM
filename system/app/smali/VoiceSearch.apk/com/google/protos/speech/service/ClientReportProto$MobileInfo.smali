.class public final Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$MobileInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;,
        Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;,
        Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

.field public static final mobileInfo:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$ClientReport;",
            "Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bandwidth_:F

.field private bitField0_:I

.field private cellIdStatus_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private networkType_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

.field private signalStrength_:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 1340
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 1819
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    .line 1820
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->initFields()V

    .line 1828
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xb

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->mobileInfo:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 1283
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1499
    iput-byte v6, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->memoizedIsInitialized:B

    .line 1525
    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->memoizedSerializedSize:I

    .line 1284
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->initFields()V

    .line 1285
    const/4 v2, 0x0

    .line 1287
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1288
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_7a

    .line 1289
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 1290
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_7e

    .line 1295
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_d

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
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 1303
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    move-result-object v5

    .line 1304
    .local v5, value:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;
    if-eqz v5, :cond_d

    .line 1305
    iget v6, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    .line 1306
    iput-object v5, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->cellIdStatus_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_4b

    goto :goto_d

    .line 1331
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;
    :catch_33
    move-exception v1

    .line 1332
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_34
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_39

    .line 1337
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_39
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->makeExtensionsImmutable()V

    throw v6

    .line 1311
    .restart local v4       #tag:I
    :sswitch_3e
    :try_start_3e
    iget v6, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    .line 1312
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->signalStrength_:I
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3e .. :try_end_4a} :catch_33
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4a} :catch_4b

    goto :goto_d

    .line 1333
    .end local v4           #tag:I
    :catch_4b
    move-exception v1

    .line 1334
    .local v1, e:Ljava/io/IOException;
    :try_start_4c
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_39

    .line 1316
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_5a
    :try_start_5a
    iget v6, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    .line 1317
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bandwidth_:F

    goto :goto_d

    .line 1321
    :sswitch_67
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 1322
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    move-result-object v5

    .line 1323
    .local v5, value:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;
    if-eqz v5, :cond_d

    .line 1324
    iget v6, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    .line 1325
    iput-object v5, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->networkType_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;
    :try_end_79
    .catchall {:try_start_5a .. :try_end_79} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5a .. :try_end_79} :catch_33
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_79} :catch_4b

    goto :goto_d

    .line 1337
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;
    :cond_7a
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->makeExtensionsImmutable()V

    .line 1339
    return-void

    .line 1290
    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_3e
        0x1d -> :sswitch_5a
        0x20 -> :sswitch_67
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/ClientReportProto$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1266
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1499
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->memoizedIsInitialized:B

    .line 1525
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->memoizedSerializedSize:I

    .line 1268
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/ClientReportProto$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1261
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1269
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1499
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->memoizedIsInitialized:B

    .line 1525
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->memoizedSerializedSize:I

    .line 1269
    return-void
.end method

.method static synthetic access$2002(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->cellIdStatus_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1261
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->signalStrength_:I

    return p1
.end method

.method static synthetic access$2202(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1261
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bandwidth_:F

    return p1
.end method

.method static synthetic access$2302(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->networkType_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1261
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;
    .registers 1

    .prologue
    .line 1273
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1494
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->SAME:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->cellIdStatus_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    .line 1495
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->signalStrength_:I

    .line 1496
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bandwidth_:F

    .line 1497
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->WIFI:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->networkType_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    .line 1498
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .registers 1

    .prologue
    .line 1610
    #calls: Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->access$1800()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1613
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBandwidth()F
    .registers 2

    .prologue
    .line 1480
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bandwidth_:F

    return v0
.end method

.method public getCellIdStatus()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;
    .registers 2

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->cellIdStatus_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;
    .registers 2

    .prologue
    .line 1277
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    return-object v0
.end method

.method public getNetworkType()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;
    .registers 2

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->networkType_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1527
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->memoizedSerializedSize:I

    .line 1528
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 1548
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 1530
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 1531
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 1532
    iget-object v2, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->cellIdStatus_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1535
    :cond_1c
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 1536
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->signalStrength_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1539
    :cond_29
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 1540
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bandwidth_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 1543
    :cond_37
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 1544
    iget-object v2, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->networkType_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->getNumber()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1547
    :cond_4a
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 1548
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getSignalStrength()I
    .registers 2

    .prologue
    .line 1470
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->signalStrength_:I

    return v0
.end method

.method public hasBandwidth()Z
    .registers 3

    .prologue
    .line 1477
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

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

.method public hasCellIdStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1457
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasNetworkType()Z
    .registers 3

    .prologue
    .line 1487
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

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

.method public hasSignalStrength()Z
    .registers 3

    .prologue
    .line 1467
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

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

    .line 1501
    iget-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->memoizedIsInitialized:B

    .line 1502
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1505
    :goto_8
    return v1

    .line 1502
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1504
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .registers 2

    .prologue
    .line 1611
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->toBuilder()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .registers 2

    .prologue
    .line 1615
    invoke-static {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->newBuilder(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

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
    .line 1554
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

    .line 1510
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->getSerializedSize()I

    .line 1511
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 1512
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->cellIdStatus_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1514
    :cond_15
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 1515
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->signalStrength_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1517
    :cond_20
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 1518
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bandwidth_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1520
    :cond_2c
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 1521
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->networkType_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1523
    :cond_3d
    return-void
.end method
