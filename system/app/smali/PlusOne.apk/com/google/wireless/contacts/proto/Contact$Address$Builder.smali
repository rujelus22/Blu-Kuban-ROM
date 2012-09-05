.class public final Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$AddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$Address;",
        "Lcom/google/wireless/contacts/proto/Contact$Address$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Contact$AddressOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private evergreen_:Z

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1385
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1527
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1570
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->address_:Ljava/lang/Object;

    .line 1606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->type_:Ljava/lang/Object;

    .line 1386
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->maybeForceBuilderInitialization()V

    .line 1387
    return-void
.end method

.method static synthetic access$1700()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 1

    .prologue
    .line 1380
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 1

    .prologue
    .line 1392
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1390
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Contact$Address;
    .registers 3

    .prologue
    .line 1417
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v0

    .line 1418
    .local v0, result:Lcom/google/wireless/contacts/proto/Contact$Address;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Address;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1419
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1421
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Contact$Address;
    .registers 6

    .prologue
    .line 1435
    new-instance v1, Lcom/google/wireless/contacts/proto/Contact$Address;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Contact$Address;-><init>(Lcom/google/wireless/contacts/proto/Contact$Address$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V

    .line 1436
    .local v1, result:Lcom/google/wireless/contacts/proto/Contact$Address;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1437
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1438
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1439
    or-int/lit8 v2, v2, 0x1

    .line 1441
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$Address;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$Address;->access$1902(Lcom/google/wireless/contacts/proto/Contact$Address;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1442
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1443
    or-int/lit8 v2, v2, 0x2

    .line 1445
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->address_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$Address;->address_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$Address;->access$2002(Lcom/google/wireless/contacts/proto/Contact$Address;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1447
    or-int/lit8 v2, v2, 0x4

    .line 1449
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->type_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$Address;->type_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$Address;->access$2102(Lcom/google/wireless/contacts/proto/Contact$Address;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1451
    or-int/lit8 v2, v2, 0x8

    .line 1453
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->evergreen_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Contact$Address;->evergreen_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$Address;->access$2202(Lcom/google/wireless/contacts/proto/Contact$Address;Z)Z

    .line 1454
    #setter for: Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Contact$Address;->access$2302(Lcom/google/wireless/contacts/proto/Contact$Address;I)I

    .line 1455
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 2

    .prologue
    .line 1396
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1397
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1398
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1399
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->address_:Ljava/lang/Object;

    .line 1400
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->type_:Ljava/lang/Object;

    .line 1402
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->evergreen_:Z

    .line 1404
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1405
    return-object p0
.end method

.method public clearAddress()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 2

    .prologue
    .line 1594
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1595
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Address;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->address_:Ljava/lang/Object;

    .line 1597
    return-object p0
.end method

.method public clearEvergreen()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 2

    .prologue
    .line 1656
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->evergreen_:Z

    .line 1659
    return-object p0
.end method

.method public clearMetadata()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 2

    .prologue
    .line 1563
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1565
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1566
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 2

    .prologue
    .line 1630
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1631
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Address;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->type_:Ljava/lang/Object;

    .line 1633
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 3

    .prologue
    .line 1409
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$Address;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

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
    .line 1380
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->address_:Ljava/lang/Object;

    .line 1576
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1577
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1578
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->address_:Ljava/lang/Object;

    .line 1581
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Address;
    .registers 2

    .prologue
    .line 1413
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Address;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v0

    return-object v0
.end method

.method public getEvergreen()Z
    .registers 2

    .prologue
    .line 1647
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->evergreen_:Z

    return v0
.end method

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->type_:Ljava/lang/Object;

    .line 1612
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1613
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1614
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->type_:Ljava/lang/Object;

    .line 1617
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public hasAddress()Z
    .registers 3

    .prologue
    .line 1572
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

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

.method public hasEvergreen()Z
    .registers 3

    .prologue
    .line 1644
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

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

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1529
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

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
    .line 1608
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

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
    .line 1380
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

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
    .line 1380
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1484
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1485
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_52

    .line 1490
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1492
    :sswitch_d
    return-object p0

    .line 1497
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    .line 1498
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->hasMetadata()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1499
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    .line 1501
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1502
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    goto :goto_0

    .line 1506
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1507
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 1511
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1512
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 1516
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1517
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->evergreen_:Z

    goto :goto_0

    .line 1485
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
        0x20 -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Contact$Address;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1459
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Address;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1472
    :cond_6
    :goto_6
    return-object p0

    .line 1460
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Address;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1461
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Address;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    .line 1463
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Address;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1464
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->setAddress(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    .line 1466
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Address;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1467
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Address;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->setType(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    .line 1469
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Address;->hasEvergreen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1470
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Address;->getEvergreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->setEvergreen(Z)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    goto :goto_6
.end method

.method public mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1551
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1553
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1559
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1560
    return-object p0

    .line 1556
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    goto :goto_1f
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1585
    if-nez p1, :cond_8

    .line 1586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1588
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1589
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->address_:Ljava/lang/Object;

    .line 1591
    return-object p0
.end method

.method public setEvergreen(Z)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1650
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1651
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->evergreen_:Z

    .line 1653
    return-object p0
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1545
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->build()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1547
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1548
    return-object p0
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1535
    if-nez p1, :cond_8

    .line 1536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1538
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1540
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1541
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1621
    if-nez p1, :cond_8

    .line 1622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1624
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->bitField0_:I

    .line 1625
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->type_:Ljava/lang/Object;

    .line 1627
    return-object p0
.end method
