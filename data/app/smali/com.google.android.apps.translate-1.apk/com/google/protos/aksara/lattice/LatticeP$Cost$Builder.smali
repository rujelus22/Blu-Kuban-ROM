.class public final Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$CostOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP$Cost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$Cost;",
        "Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$CostOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cost_:D

.field private id_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 242
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->maybeForceBuilderInitialization()V

    .line 243
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 1

    .prologue
    .line 237
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 1

    .prologue
    .line 248
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 246
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v0

    .line 270
    .local v0, result:Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 271
    invoke-static {v0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 273
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 6

    .prologue
    .line 277
    new-instance v1, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V

    .line 278
    .local v1, result:Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    .line 279
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 280
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 281
    or-int/lit8 v2, v2, 0x1

    .line 283
    :cond_10
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->id_:I

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Cost;->id_:I
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->access$302(Lcom/google/protos/aksara/lattice/LatticeP$Cost;I)I

    .line 284
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 285
    or-int/lit8 v2, v2, 0x2

    .line 287
    :cond_1c
    iget-wide v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->cost_:D

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Cost;->cost_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->access$402(Lcom/google/protos/aksara/lattice/LatticeP$Cost;D)D

    .line 288
    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$Cost;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->access$502(Lcom/google/protos/aksara/lattice/LatticeP$Cost;I)I

    .line 289
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 3

    .prologue
    .line 252
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->id_:I

    .line 254
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    .line 255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->cost_:D

    .line 256
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    .line 257
    return-object p0
.end method

.method public clearCost()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 3

    .prologue
    .line 367
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    .line 368
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->cost_:D

    .line 370
    return-object p0
.end method

.method public clearId()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 2

    .prologue
    .line 346
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->id_:I

    .line 349
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 3

    .prologue
    .line 261
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

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
    .line 237
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCost()D
    .registers 3

    .prologue
    .line 358
    iget-wide v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->cost_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    .registers 2

    .prologue
    .line 265
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->id_:I

    return v0
.end method

.method public hasCost()Z
    .registers 3

    .prologue
    .line 355
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

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

    .line 334
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

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
    .line 305
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 307
    const/4 v0, 0x0

    .line 309
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
    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 237
    check-cast p1, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

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
    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    const/4 v2, 0x0

    .line 318
    .local v2, parsedMessage:Lcom/google/protos/aksara/lattice/LatticeP$Cost;
    :try_start_1
    sget-object v3, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 323
    if-eqz v2, :cond_10

    .line 324
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    .line 327
    :cond_10
    return-object p0

    .line 319
    :catch_11
    move-exception v1

    .line 320
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-object v2, v0

    .line 321
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 323
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 324
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$Cost;)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 293
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$Cost;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 301
    :goto_6
    return-object p0

    .line 294
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 295
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->setId(I)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    .line 297
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->hasCost()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 298
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost;->getCost()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->setCost(D)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;

    .line 300
    :cond_21
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6
.end method

.method public setCost(D)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 361
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    .line 362
    iput-wide p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->cost_:D

    .line 364
    return-object p0
.end method

.method public setId(I)Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 340
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->bitField0_:I

    .line 341
    iput p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$Cost$Builder;->id_:I

    .line 343
    return-object p0
.end method
