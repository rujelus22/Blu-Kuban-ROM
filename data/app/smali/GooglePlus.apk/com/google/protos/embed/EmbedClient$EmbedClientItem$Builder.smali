.class public final Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "EmbedClient.java"

# interfaces
.implements Lcom/google/protos/embed/EmbedClient$EmbedClientItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
        "Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;",
        ">;",
        "Lcom/google/protos/embed/EmbedClient$EmbedClientItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private canonicalId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private type_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embed/ItemTypes$ItemType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 426
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->type_:Ljava/util/List;

    .line 477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->id_:Ljava/lang/Object;

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->canonicalId_:Ljava/lang/Object;

    .line 274
    invoke-direct {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->maybeForceBuilderInitialization()V

    .line 275
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 1

    .prologue
    .line 269
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->create()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 1

    .prologue
    .line 280
    new-instance v0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    invoke-direct {v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTypeIsMutable()V
    .registers 3

    .prologue
    .line 429
    iget v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->type_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->type_:Ljava/util/List;

    .line 431
    iget v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    .line 433
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 278
    return-void
.end method


# virtual methods
.method public addType(Lcom/google/protos/embed/ItemTypes$ItemType;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 454
    if-nez p1, :cond_8

    .line 455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 457
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->ensureTypeIsMutable()V

    .line 458
    iget-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->type_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->build()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 3

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->buildPartial()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    .line 304
    .local v0, result:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    invoke-virtual {v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 305
    invoke-static {v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 307
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->buildPartial()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 6

    .prologue
    .line 321
    new-instance v1, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;-><init>(Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;Lcom/google/protos/embed/EmbedClient$1;)V

    .line 322
    .local v1, result:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    iget v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    .line 323
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 324
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 325
    iget-object v3, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->type_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->type_:Ljava/util/List;

    .line 326
    iget v3, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    .line 328
    :cond_1e
    iget-object v3, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->type_:Ljava/util/List;

    #setter for: Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->type_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->access$302(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;Ljava/util/List;)Ljava/util/List;

    .line 329
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 330
    or-int/lit8 v2, v2, 0x1

    .line 332
    :cond_2a
    iget-object v3, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->access$402(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 334
    or-int/lit8 v2, v2, 0x2

    .line 336
    :cond_36
    iget-object v3, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->canonicalId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->canonicalId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->access$502(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    #setter for: Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->access$602(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;I)I

    .line 338
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->clear()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->clear()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->clear()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 2

    .prologue
    .line 284
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->type_:Ljava/util/List;

    .line 286
    iget v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->id_:Ljava/lang/Object;

    .line 288
    iget v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    .line 289
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->canonicalId_:Ljava/lang/Object;

    .line 290
    iget v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    .line 291
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->clone()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->clone()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->clone()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 3

    .prologue
    .line 295
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->create()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->buildPartial()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->mergeFrom(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

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
    .line 269
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->clone()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 2

    .prologue
    .line 299
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 366
    const/4 v0, 0x0

    .line 368
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
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
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 269
    check-cast p1, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->mergeFrom(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

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
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 377
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_56

    .line 382
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 384
    :sswitch_d
    return-object p0

    .line 389
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 390
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/protos/embed/ItemTypes$ItemType;->valueOf(I)Lcom/google/protos/embed/ItemTypes$ItemType;

    move-result-object v4

    .line 391
    .local v4, value:Lcom/google/protos/embed/ItemTypes$ItemType;
    if-eqz v4, :cond_0

    .line 392
    invoke-virtual {p0, v4}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->addType(Lcom/google/protos/embed/ItemTypes$ItemType;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    goto :goto_0

    .line 397
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/protos/embed/ItemTypes$ItemType;
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 398
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 399
    .local v1, oldLimit:I
    :cond_24
    :goto_24
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_38

    .line 400
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 401
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protos/embed/ItemTypes$ItemType;->valueOf(I)Lcom/google/protos/embed/ItemTypes$ItemType;

    move-result-object v4

    .line 402
    .restart local v4       #value:Lcom/google/protos/embed/ItemTypes$ItemType;
    if-eqz v4, :cond_24

    .line 403
    invoke-virtual {p0, v4}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->addType(Lcom/google/protos/embed/ItemTypes$ItemType;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    goto :goto_24

    .line 406
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/protos/embed/ItemTypes$ItemType;
    :cond_38
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 410
    .end local v0           #length:I
    .end local v1           #oldLimit:I
    :sswitch_3c
    iget v5, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    .line 411
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 415
    :sswitch_49
    iget v5, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    .line 416
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->canonicalId_:Ljava/lang/Object;

    goto :goto_0

    .line 377
    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0xa -> :sswitch_1c
        0x12 -> :sswitch_3c
        0x1a -> :sswitch_49
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 342
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 360
    :goto_6
    return-object p0

    .line 343
    :cond_7
    #getter for: Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->type_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->access$300(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 344
    iget-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->type_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 345
    #getter for: Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->type_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->access$300(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->type_:Ljava/util/List;

    .line 346
    iget v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    .line 353
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 354
    invoke-virtual {p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->setId(Ljava/lang/String;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    .line 356
    :cond_32
    invoke-virtual {p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->hasCanonicalId()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 357
    invoke-virtual {p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getCanonicalId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->setCanonicalId(Ljava/lang/String;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    .line 359
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6

    .line 348
    :cond_43
    invoke-direct {p0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->ensureTypeIsMutable()V

    .line 349
    iget-object v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->type_:Ljava/util/List;

    #getter for: Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->type_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->access$300(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setCanonicalId(Ljava/lang/String;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 528
    if-nez p1, :cond_8

    .line 529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 531
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    .line 532
    iput-object p1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->canonicalId_:Ljava/lang/Object;

    .line 534
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 492
    if-nez p1, :cond_8

    .line 493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 495
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->bitField0_:I

    .line 496
    iput-object p1, p0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->id_:Ljava/lang/Object;

    .line 498
    return-object p0
.end method
