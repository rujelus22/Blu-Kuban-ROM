.class public final Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;",
        "Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemIdOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23318
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23319
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->maybeForceBuilderInitialization()V

    .line 23320
    return-void
.end method

.method static synthetic access$28700(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23313
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$28800()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    .registers 1

    .prologue
    .line 23313
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->create()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23353
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    .line 23354
    .local v0, result:Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 23355
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 23358
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    .registers 1

    .prologue
    .line 23325
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23323
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 3

    .prologue
    .line 23344
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    .line 23345
    .local v0, result:Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23346
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23348
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23313
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->build()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 5

    .prologue
    .line 23362
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;-><init>(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 23363
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->bitField0_:I

    .line 23364
    const/4 v2, 0x0

    .line 23365
    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    .line 23366
    or-int/lit8 v1, v2, 0x1

    .line 23368
    :goto_10
    iget-wide v2, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->id_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->id_:J
    invoke-static {v0, v2, v3}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->access$29002(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;J)J

    .line 23369
    #setter for: Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->access$29102(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;I)I

    .line 23370
    return-object v0

    :cond_19
    move v1, v2

    goto :goto_10
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23313
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    .registers 3

    .prologue
    .line 23329
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23330
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->id_:J

    .line 23331
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->bitField0_:I

    .line 23332
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23313
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->clear()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23313
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->clear()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    .registers 3

    .prologue
    .line 23432
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->bitField0_:I

    .line 23433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->id_:J

    .line 23435
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    .registers 3

    .prologue
    .line 23336
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->create()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23313
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23313
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23313
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

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
    .line 23313
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
    .registers 2

    .prologue
    .line 23340
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23313
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23313
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 23423
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->id_:J

    return-wide v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 23420
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 23382
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 23384
    const/4 v0, 0x0

    .line 23386
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    .registers 4
    .parameter

    .prologue
    .line 23374
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 23378
    :goto_7
    return-object v0

    .line 23375
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 23376
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->setId(J)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    :cond_15
    move-object v0, p0

    .line 23378
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23394
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 23395
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 23400
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23402
    :sswitch_d
    return-object p0

    .line 23407
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->bitField0_:I

    .line 23408
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->id_:J

    goto :goto_0

    .line 23395
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 23313
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23313
    check-cast p1, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

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
    .line 23313
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(J)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 23426
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->bitField0_:I

    .line 23427
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId$Builder;->id_:J

    .line 23429
    return-object p0
.end method
