.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1371
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3000()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    .registers 1

    .prologue
    .line 1365
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    .registers 3

    .prologue
    .line 1374
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;-><init>()V

    .line 1375
    .local v0, builder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    new-instance v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;-><init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V

    iput-object v1, v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    .line 1376
    return-object v0
.end method


# virtual methods
.method public addBlock(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1499
    if-nez p1, :cond_8

    .line 1500
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1502
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1503
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;Ljava/util/List;)Ljava/util/List;

    .line 1505
    :cond_1e
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1506
    return-object p0
.end method

.method public buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
    .registers 4

    .prologue
    .line 1420
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    if-nez v1, :cond_c

    .line 1421
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1424
    :cond_c
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_25

    .line 1425
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    iget-object v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;Ljava/util/List;)Ljava/util/List;

    .line 1428
    :cond_25
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    .line 1429
    .local v0, returnMe:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    .line 1430
    return-object v0
.end method

.method public clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    .registers 3

    .prologue
    .line 1393
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    invoke-virtual {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

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
    .line 1365
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1434
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1444
    :cond_6
    :goto_6
    return-object p0

    .line 1435
    :cond_7
    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1436
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1437
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;Ljava/util/List;)Ljava/util/List;

    .line 1439
    :cond_27
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1441
    :cond_34
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->hasFirstWordOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1442
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->getFirstWordOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->setFirstWordOffset(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1452
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1453
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_26

    .line 1457
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1458
    :sswitch_d
    return-object p0

    .line 1463
    :sswitch_e
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    move-result-object v0

    .line 1464
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1465
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->addBlock(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    goto :goto_0

    .line 1469
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->setFirstWordOffset(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    goto :goto_0

    .line 1453
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xb -> :sswitch_e
        0x30 -> :sswitch_1e
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
    .line 1365
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

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
    .line 1365
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFirstWordOffset(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->hasFirstWordOffset:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;Z)Z

    .line 1537
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->firstWordOffset_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->access$3402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;I)I

    .line 1538
    return-object p0
.end method
