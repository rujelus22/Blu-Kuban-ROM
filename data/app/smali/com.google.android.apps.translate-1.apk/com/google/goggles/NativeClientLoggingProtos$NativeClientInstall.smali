.class public final Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeClientLoggingProtos.java"

# interfaces
.implements Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstallOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NativeClientLoggingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeClientInstall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    }
.end annotation


# static fields
.field public static final INSTALLED_VERSION_FIELD_NUMBER:I = 0x2

.field public static final UPGRADE_FROM_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private installedVersion_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private upgradeFrom_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1755
    new-instance v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    .line 1756
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    invoke-direct {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->initFields()V

    .line 1757
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1364
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1446
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->memoizedIsInitialized:B

    .line 1466
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->memoizedSerializedSize:I

    .line 1365
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;Lcom/google/goggles/NativeClientLoggingProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1359
    invoke-direct {p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;-><init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1366
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1446
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->memoizedIsInitialized:B

    .line 1466
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->memoizedSerializedSize:I

    .line 1366
    return-void
.end method

.method static synthetic access$1902(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->upgradeFrom_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->installedVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1359
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 1

    .prologue
    .line 1370
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    return-object v0
.end method

.method private getInstalledVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->installedVersion_:Ljava/lang/Object;

    .line 1432
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1433
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1435
    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->installedVersion_:Ljava/lang/Object;

    .line 1438
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getUpgradeFromBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->upgradeFrom_:Ljava/lang/Object;

    .line 1400
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1401
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1403
    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->upgradeFrom_:Ljava/lang/Object;

    .line 1406
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1443
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->upgradeFrom_:Ljava/lang/Object;

    .line 1444
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->installedVersion_:Ljava/lang/Object;

    .line 1445
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 1

    .prologue
    .line 1558
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->access$1700()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1561
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1527
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    .line 1528
    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1529
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->access$1600(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    .line 1531
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1538
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    .line 1539
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1540
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->access$1600(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    .line 1542
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1494
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->access$1600(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1500
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->access$1600(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1548
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->access$1600(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1554
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->access$1600(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1516
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->access$1600(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1522
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->access$1600(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1505
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->access$1600(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1511
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->access$1600(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 2

    .prologue
    .line 1374
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1359
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->installedVersion_:Ljava/lang/Object;

    .line 1418
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1419
    check-cast v0, Ljava/lang/String;

    .line 1427
    :goto_8
    return-object v0

    .line 1421
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1423
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1424
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1425
    iput-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->installedVersion_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1427
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1468
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->memoizedSerializedSize:I

    .line 1469
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1481
    :goto_7
    return v0

    .line 1471
    :cond_8
    const/4 v0, 0x0

    .line 1472
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_18

    .line 1473
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getUpgradeFromBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1476
    :cond_18
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_27

    .line 1477
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getInstalledVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1480
    :cond_27
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getUpgradeFrom()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->upgradeFrom_:Ljava/lang/Object;

    .line 1386
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1387
    check-cast v0, Ljava/lang/String;

    .line 1395
    :goto_8
    return-object v0

    .line 1389
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1391
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1393
    iput-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->upgradeFrom_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1395
    goto :goto_8
.end method

.method public hasInstalledVersion()Z
    .registers 3

    .prologue
    .line 1414
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->bitField0_:I

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

.method public hasUpgradeFrom()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1382
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->bitField0_:I

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
    const/4 v0, 0x1

    .line 1448
    iget-byte v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->memoizedIsInitialized:B

    .line 1449
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 1452
    :goto_8
    return v0

    .line 1449
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 1451
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 2

    .prologue
    .line 1559
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1359
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilderForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 2

    .prologue
    .line 1563
    invoke-static {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1359
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->toBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

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
    .line 1488
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1457
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getSerializedSize()I

    .line 1458
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 1459
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getUpgradeFromBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1461
    :cond_12
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 1462
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getInstalledVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1464
    :cond_1f
    return-void
.end method
