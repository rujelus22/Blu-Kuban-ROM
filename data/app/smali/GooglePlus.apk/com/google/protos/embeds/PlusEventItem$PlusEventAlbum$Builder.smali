.class public final Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;",
        "Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;",
        ">;",
        "Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbumOrBuilder;"
    }
.end annotation


# instance fields
.field private albumId_:Ljava/lang/Object;

.field private bitField0_:I

.field private unnamedShapeCount_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4566
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->albumId_:Ljava/lang/Object;

    .line 4567
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->maybeForceBuilderInitialization()V

    .line 4568
    return-void
.end method

.method static synthetic access$5600()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    .registers 1

    .prologue
    .line 4561
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    .registers 1

    .prologue
    .line 4573
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4571
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4561
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->build()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;
    .registers 3

    .prologue
    .line 4594
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    move-result-object v0

    .line 4595
    .local v0, result:Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4596
    invoke-static {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4598
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4561
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;
    .registers 6

    .prologue
    .line 4612
    new-instance v1, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;-><init>(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;Lcom/google/protos/embeds/PlusEventItem$1;)V

    .line 4613
    .local v1, result:Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    .line 4614
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4615
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4616
    or-int/lit8 v2, v2, 0x1

    .line 4618
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->albumId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->albumId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->access$5802(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4619
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4620
    or-int/lit8 v2, v2, 0x2

    .line 4622
    :cond_1c
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->unnamedShapeCount_:I

    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->unnamedShapeCount_:I
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->access$5902(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;I)I

    .line 4623
    #setter for: Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->access$6002(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;I)I

    .line 4624
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4561
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->clear()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4561
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->clear()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    .registers 2

    .prologue
    .line 4577
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->albumId_:Ljava/lang/Object;

    .line 4579
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    .line 4580
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->unnamedShapeCount_:I

    .line 4581
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    .line 4582
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4561
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4561
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    .registers 3

    .prologue
    .line 4586
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

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
    .line 4561
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4561
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4561
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;
    .registers 2

    .prologue
    .line 4590
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 4639
    const/4 v0, 0x1

    return v0
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
    .line 4561
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4561
    check-cast p1, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

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
    .line 4561
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4647
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4648
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 4653
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4655
    :sswitch_d
    return-object p0

    .line 4660
    :sswitch_e
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    .line 4661
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->albumId_:Ljava/lang/Object;

    goto :goto_0

    .line 4665
    :sswitch_1b
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    .line 4666
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->unnamedShapeCount_:I

    goto :goto_0

    .line 4648
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 4628
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4635
    :cond_6
    :goto_6
    return-object p0

    .line 4629
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4630
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->setAlbumId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    .line 4632
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->hasUnnamedShapeCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4633
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->getUnnamedShapeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->setUnnamedShapeCount(I)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    goto :goto_6
.end method

.method public setAlbumId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4691
    if-nez p1, :cond_8

    .line 4692
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4694
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    .line 4695
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->albumId_:Ljava/lang/Object;

    .line 4697
    return-object p0
.end method

.method public setUnnamedShapeCount(I)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4720
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->bitField0_:I

    .line 4721
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->unnamedShapeCount_:I

    .line 4723
    return-object p0
.end method
