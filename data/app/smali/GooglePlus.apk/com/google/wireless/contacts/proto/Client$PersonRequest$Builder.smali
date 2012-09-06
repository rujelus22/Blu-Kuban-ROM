.class public final Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$PersonRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$PersonRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$PersonRequest;",
        "Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$PersonRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 12267
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12367
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 12268
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->maybeForceBuilderInitialization()V

    .line 12269
    return-void
.end method

.method static synthetic access$16400()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    .registers 1

    .prologue
    .line 12262
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    .registers 1

    .prologue
    .line 12274
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 12272
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$PersonRequest;
    .registers 3

    .prologue
    .line 12293
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    .line 12294
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$PersonRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 12295
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12297
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$PersonRequest;
    .registers 6

    .prologue
    .line 12311
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 12312
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$PersonRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

    .line 12313
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12314
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 12315
    or-int/lit8 v2, v2, 0x1

    .line 12317
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    #setter for: Lcom/google/wireless/contacts/proto/Client$PersonRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->access$16602(Lcom/google/wireless/contacts/proto/Client$PersonRequest;Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 12318
    #setter for: Lcom/google/wireless/contacts/proto/Client$PersonRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->access$16702(Lcom/google/wireless/contacts/proto/Client$PersonRequest;I)I

    .line 12319
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    .registers 2

    .prologue
    .line 12278
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12279
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 12280
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

    .line 12281
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    .registers 2

    .prologue
    .line 12403
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 12405
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

    .line 12406
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    .registers 3

    .prologue
    .line 12285
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

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
    .line 12262
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12262
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PersonRequest;
    .registers 2

    .prologue
    .line 12289
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2

    .prologue
    .line 12372
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12369
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

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
    .line 12331
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
    .line 12262
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 12262
    check-cast p1, Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

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
    .line 12262
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12339
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 12340
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 12345
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12347
    :sswitch_d
    return-object p0

    .line 12352
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    .line 12353
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->hasId()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 12354
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    .line 12356
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12357
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    goto :goto_0

    .line 12340
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 12323
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 12327
    :cond_6
    :goto_6
    return-object p0

    .line 12324
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12325
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->mergeId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    goto :goto_6
.end method

.method public mergeId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 12391
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 12393
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 12399
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

    .line 12400
    return-object p0

    .line 12396
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    goto :goto_1f
.end method

.method public setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 12385
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 12387
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

    .line 12388
    return-object p0
.end method

.method public setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12375
    if-nez p1, :cond_8

    .line 12376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12378
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 12380
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->bitField0_:I

    .line 12381
    return-object p0
.end method
