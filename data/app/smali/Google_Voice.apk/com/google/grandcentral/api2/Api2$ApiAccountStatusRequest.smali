.class public final Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiAccountStatusRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1552
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1849
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    .line 1850
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->initFields()V

    .line 1851
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

    .line 1518
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1604
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->memoizedIsInitialized:B

    .line 1625
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->memoizedSerializedSize:I

    .line 1519
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->initFields()V

    .line 1520
    const/4 v2, 0x0

    .line 1522
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1523
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_38

    .line 1524
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1525
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_4c

    .line 1530
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1532
    const/4 v0, 0x1

    goto :goto_d

    .line 1527
    :sswitch_1e
    const/4 v0, 0x1

    .line 1528
    goto :goto_d

    .line 1537
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->bitField0_:I

    .line 1538
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_3c

    goto :goto_d

    .line 1543
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 1544
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 1549
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->makeExtensionsImmutable()V

    throw v4

    :cond_38
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->makeExtensionsImmutable()V

    .line 1551
    return-void

    .line 1545
    :catch_3c
    move-exception v1

    .line 1546
    .local v1, e:Ljava/io/IOException;
    :try_start_3d
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_33

    .line 1525
    nop

    :sswitch_data_4c
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/grandcentral/api2/Api2$1;)V
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
    .line 1496
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1501
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1604
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->memoizedIsInitialized:B

    .line 1625
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->memoizedSerializedSize:I

    .line 1503
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1496
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1504
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1604
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->memoizedIsInitialized:B

    .line 1625
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->memoizedSerializedSize:I

    .line 1504
    return-void
.end method

.method static synthetic access$2100(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1496
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 1

    .prologue
    .line 1508
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1602
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 1603
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 1

    .prologue
    .line 1698
    #calls: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->access$1900()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1701
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1678
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1684
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1648
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1654
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1689
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1695
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1668
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1674
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1658
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1664
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1575
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 1576
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1577
    check-cast v1, Ljava/lang/String;

    .line 1585
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1579
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1581
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1582
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1583
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1585
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1590
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 1591
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1592
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1594
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 1597
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;
    .registers 2

    .prologue
    .line 1512
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1496
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1564
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1627
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->memoizedSerializedSize:I

    .line 1628
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 1636
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 1630
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 1631
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 1632
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1635
    :cond_18
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 1636
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1572
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1606
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->memoizedIsInitialized:B

    .line 1607
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 1614
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 1607
    goto :goto_9

    .line 1609
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1610
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 1611
    goto :goto_9

    .line 1613
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 2

    .prologue
    .line 1699
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1496
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;
    .registers 2

    .prologue
    .line 1703
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1496
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

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
    .line 1642
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1619
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->getSerializedSize()I

    .line 1620
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 1621
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1623
    :cond_11
    return-void
.end method
