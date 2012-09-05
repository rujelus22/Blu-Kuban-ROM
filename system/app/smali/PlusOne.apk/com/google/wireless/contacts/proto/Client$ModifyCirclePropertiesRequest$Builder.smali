.class public final Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;",
        "Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private forSharing_:Z

.field private id_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14513
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14637
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->id_:Ljava/lang/Object;

    .line 14694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->name_:Ljava/lang/Object;

    .line 14514
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->maybeForceBuilderInitialization()V

    .line 14515
    return-void
.end method

.method static synthetic access$19400()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    .registers 1

    .prologue
    .line 14508
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    .registers 1

    .prologue
    .line 14520
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14518
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;
    .registers 3

    .prologue
    .line 14543
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    .line 14544
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 14545
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14547
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14508
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;
    .registers 6

    .prologue
    .line 14561
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 14562
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14563
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14564
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 14565
    or-int/lit8 v2, v2, 0x1

    .line 14567
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->access$19602(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14568
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 14569
    or-int/lit8 v2, v2, 0x2

    .line 14571
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->forSharing_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->forSharing_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->access$19702(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;Z)Z

    .line 14572
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 14573
    or-int/lit8 v2, v2, 0x4

    .line 14575
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->access$19802(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14576
    #setter for: Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->access$19902(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;I)I

    .line 14577
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14508
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14508
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    .registers 2

    .prologue
    .line 14524
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14525
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->id_:Ljava/lang/Object;

    .line 14526
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->forSharing_:Z

    .line 14528
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14529
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->name_:Ljava/lang/Object;

    .line 14530
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14531
    return-object p0
.end method

.method public clearForSharing()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    .registers 2

    .prologue
    .line 14687
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->forSharing_:Z

    .line 14690
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    .registers 2

    .prologue
    .line 14661
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14662
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->id_:Ljava/lang/Object;

    .line 14664
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    .registers 2

    .prologue
    .line 14718
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14719
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->name_:Ljava/lang/Object;

    .line 14721
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14508
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14508
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    .registers 3

    .prologue
    .line 14535
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

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
    .line 14508
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14508
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14508
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;
    .registers 2

    .prologue
    .line 14539
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getForSharing()Z
    .registers 2

    .prologue
    .line 14678
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->forSharing_:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14642
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->id_:Ljava/lang/Object;

    .line 14643
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14644
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14645
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->id_:Ljava/lang/Object;

    .line 14648
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

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14699
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->name_:Ljava/lang/Object;

    .line 14700
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14701
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14702
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->name_:Ljava/lang/Object;

    .line 14705
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

.method public hasForSharing()Z
    .registers 3

    .prologue
    .line 14675
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14639
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 14696
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

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
    .line 14508
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

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
    .line 14508
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14603
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 14604
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 14609
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14611
    :sswitch_d
    return-object p0

    .line 14616
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14617
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 14621
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14622
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->forSharing_:Z

    goto :goto_0

    .line 14626
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14627
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 14604
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 14581
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14591
    :cond_6
    :goto_6
    return-object p0

    .line 14582
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14583
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    .line 14585
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->hasForSharing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 14586
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getForSharing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->setForSharing(Z)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    .line 14588
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14589
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;

    goto :goto_6
.end method

.method public setForSharing(Z)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14681
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14682
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->forSharing_:Z

    .line 14684
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14652
    if-nez p1, :cond_8

    .line 14653
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14655
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14656
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->id_:Ljava/lang/Object;

    .line 14658
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14709
    if-nez p1, :cond_8

    .line 14710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14712
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->bitField0_:I

    .line 14713
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ModifyCirclePropertiesRequest$Builder;->name_:Ljava/lang/Object;

    .line 14715
    return-object p0
.end method
