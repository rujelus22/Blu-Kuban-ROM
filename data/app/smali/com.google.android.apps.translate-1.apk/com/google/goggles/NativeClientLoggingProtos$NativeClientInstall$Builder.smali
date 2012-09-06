.class public final Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NativeClientLoggingProtos.java"

# interfaces
.implements Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstallOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;",
        ">;",
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstallOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private installedVersion_:Ljava/lang/Object;

.field private upgradeFrom_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1570
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1680
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->upgradeFrom_:Ljava/lang/Object;

    .line 1716
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->installedVersion_:Ljava/lang/Object;

    .line 1571
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->maybeForceBuilderInitialization()V

    .line 1572
    return-void
.end method

.method static synthetic access$1600(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1565
    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 1

    .prologue
    .line 1565
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    .line 1608
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1609
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1612
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 1

    .prologue
    .line 1577
    new-instance v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    invoke-direct {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1575
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 3

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    .line 1599
    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1600
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1602
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->build()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1616
    new-instance v2, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;-><init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;Lcom/google/goggles/NativeClientLoggingProtos$1;)V

    .line 1617
    iget v3, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    .line 1618
    const/4 v1, 0x0

    .line 1619
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_23

    .line 1622
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->upgradeFrom_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->upgradeFrom_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->access$1902(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 1624
    or-int/lit8 v0, v0, 0x2

    .line 1626
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->installedVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->installedVersion_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->access$2002(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    #setter for: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->access$2102(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;I)I

    .line 1628
    return-object v2

    :cond_23
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 2

    .prologue
    .line 1581
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->upgradeFrom_:Ljava/lang/Object;

    .line 1583
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    .line 1584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->installedVersion_:Ljava/lang/Object;

    .line 1585
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    .line 1586
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->clear()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearInstalledVersion()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 2

    .prologue
    .line 1740
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    .line 1741
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getInstalledVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->installedVersion_:Ljava/lang/Object;

    .line 1743
    return-object p0
.end method

.method public clearUpgradeFrom()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 2

    .prologue
    .line 1704
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    .line 1705
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getUpgradeFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->upgradeFrom_:Ljava/lang/Object;

    .line 1707
    return-object p0
.end method

.method public clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 3

    .prologue
    .line 1590
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->buildPartial()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->clone()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 2

    .prologue
    .line 1594
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->installedVersion_:Ljava/lang/Object;

    .line 1722
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1723
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1724
    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->installedVersion_:Ljava/lang/Object;

    .line 1727
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getUpgradeFrom()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->upgradeFrom_:Ljava/lang/Object;

    .line 1686
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1687
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1688
    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->upgradeFrom_:Ljava/lang/Object;

    .line 1691
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasInstalledVersion()Z
    .registers 3

    .prologue
    .line 1718
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

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

    .line 1682
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1643
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1632
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1639
    :cond_6
    :goto_6
    return-object p0

    .line 1633
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->hasUpgradeFrom()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1634
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getUpgradeFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->setUpgradeFrom(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    .line 1636
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->hasInstalledVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1637
    invoke-virtual {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getInstalledVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->setInstalledVersion(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1651
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1652
    sparse-switch v0, :sswitch_data_28

    .line 1657
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1659
    :sswitch_d
    return-object p0

    .line 1664
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    .line 1665
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->upgradeFrom_:Ljava/lang/Object;

    goto :goto_0

    .line 1669
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    .line 1670
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->installedVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 1652
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1565
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1565
    check-cast p1, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    invoke-virtual {p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1565
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setInstalledVersion(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1731
    if-nez p1, :cond_8

    .line 1732
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1734
    :cond_8
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    .line 1735
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->installedVersion_:Ljava/lang/Object;

    .line 1737
    return-object p0
.end method

.method setInstalledVersion(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1746
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    .line 1747
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->installedVersion_:Ljava/lang/Object;

    .line 1749
    return-void
.end method

.method public setUpgradeFrom(Ljava/lang/String;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1695
    if-nez p1, :cond_8

    .line 1696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1698
    :cond_8
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    .line 1699
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->upgradeFrom_:Ljava/lang/Object;

    .line 1701
    return-object p0
.end method

.method setUpgradeFrom(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1710
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->bitField0_:I

    .line 1711
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall$Builder;->upgradeFrom_:Ljava/lang/Object;

    .line 1713
    return-void
.end method
