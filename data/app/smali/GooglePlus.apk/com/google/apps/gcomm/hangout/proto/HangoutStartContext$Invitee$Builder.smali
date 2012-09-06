.class public final Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HangoutStartContext.java"

# interfaces
.implements Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InviteeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;",
        ">;",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InviteeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private profileId_:Ljava/lang/Object;

.field private profileName_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1602
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1716
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->profileId_:Ljava/lang/Object;

    .line 1752
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->profileName_:Ljava/lang/Object;

    .line 1603
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->maybeForceBuilderInitialization()V

    .line 1604
    return-void
.end method

.method static synthetic access$1900()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    .registers 1

    .prologue
    .line 1597
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    .registers 1

    .prologue
    .line 1609
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1607
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;
    .registers 3

    .prologue
    .line 1630
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    move-result-object v0

    .line 1631
    .local v0, result:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;
    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1632
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1634
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1597
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->build()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;
    .registers 6

    .prologue
    .line 1648
    new-instance v1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;-><init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$1;)V

    .line 1649
    .local v1, result:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    .line 1650
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1651
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1652
    or-int/lit8 v2, v2, 0x1

    .line 1654
    :cond_10
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->profileId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->access$2102(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1656
    or-int/lit8 v2, v2, 0x2

    .line 1658
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->profileName_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->profileName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->access$2202(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->access$2302(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;I)I

    .line 1660
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1597
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    .registers 2

    .prologue
    .line 1613
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1614
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->profileId_:Ljava/lang/Object;

    .line 1615
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    .line 1616
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->profileName_:Ljava/lang/Object;

    .line 1617
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    .line 1618
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1597
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->clear()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1597
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->clear()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    .registers 3

    .prologue
    .line 1622
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1597
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1597
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

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
    .line 1597
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;
    .registers 2

    .prologue
    .line 1626
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1597
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1597
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    move-result-object v0

    return-object v0
.end method

.method public hasProfileId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1718
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

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
    .line 1675
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->hasProfileId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1677
    const/4 v0, 0x0

    .line 1679
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1664
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1671
    :cond_6
    :goto_6
    return-object p0

    .line 1665
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->hasProfileId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1666
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->getProfileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->setProfileId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    .line 1668
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->hasProfileName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1669
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->setProfileName(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1687
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1688
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 1693
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1695
    :sswitch_d
    return-object p0

    .line 1700
    :sswitch_e
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    .line 1701
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->profileId_:Ljava/lang/Object;

    goto :goto_0

    .line 1705
    :sswitch_1b
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    .line 1706
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->profileName_:Ljava/lang/Object;

    goto :goto_0

    .line 1688
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1597
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1597
    check-cast p1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1597
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setProfileId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1731
    if-nez p1, :cond_8

    .line 1732
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1734
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    .line 1735
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->profileId_:Ljava/lang/Object;

    .line 1737
    return-object p0
.end method

.method public setProfileName(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1767
    if-nez p1, :cond_8

    .line 1768
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1770
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->bitField0_:I

    .line 1771
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitee$Builder;->profileName_:Ljava/lang/Object;

    .line 1773
    return-object p0
.end method
