.class public final Lcom/google/feedreader/extrpc/Client$Category$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$CategoryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$Category;",
        "Lcom/google/feedreader/extrpc/Client$Category$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$CategoryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 359
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->id_:Ljava/lang/Object;

    .line 395
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->label_:Ljava/lang/Object;

    .line 242
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->maybeForceBuilderInitialization()V

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 1

    .prologue
    .line 236
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->create()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$Category;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    .line 279
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Category;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Category;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 280
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 283
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 1

    .prologue
    .line 248
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Category$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 246
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$Category;
    .registers 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    .line 270
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Category;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Category;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 271
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 273
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->build()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$Category;
    .registers 6

    .prologue
    .line 287
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Category;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$Category;-><init>(Lcom/google/feedreader/extrpc/Client$Category$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 288
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    .line 289
    const/4 v2, 0x0

    .line 290
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 291
    or-int/lit8 v2, v2, 0x1

    .line 293
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Category;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Category;->access$302(Lcom/google/feedreader/extrpc/Client$Category;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 295
    or-int/lit8 v1, v2, 0x2

    .line 297
    :goto_1c
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Category;->label_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$Category;->access$402(Lcom/google/feedreader/extrpc/Client$Category;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    #setter for: Lcom/google/feedreader/extrpc/Client$Category;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$Category;->access$502(Lcom/google/feedreader/extrpc/Client$Category;I)I

    .line 299
    return-object v0

    :cond_25
    move v1, v2

    goto :goto_1c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->id_:Ljava/lang/Object;

    .line 254
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->label_:Ljava/lang/Object;

    .line 256
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    .line 257
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 2

    .prologue
    .line 383
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    .line 384
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Category;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->id_:Ljava/lang/Object;

    .line 386
    return-object p0
.end method

.method public clearLabel()Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 2

    .prologue
    .line 419
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    .line 420
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Category;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->label_:Ljava/lang/Object;

    .line 422
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 3

    .prologue
    .line 261
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->create()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Category;)Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Category$Builder;

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
    .line 236
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Category;
    .registers 2

    .prologue
    .line 265
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->id_:Ljava/lang/Object;

    .line 365
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 366
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 370
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->label_:Ljava/lang/Object;

    .line 401
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 402
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->label_:Ljava/lang/Object;

    move-object v2, v1

    .line 406
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 361
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 397
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 322
    :goto_8
    return v0

    .line 318
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->hasLabel()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 320
    goto :goto_8

    .line 322
    :cond_11
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$Category;)Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 3
    .parameter

    .prologue
    .line 303
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 310
    :goto_7
    return-object v0

    .line 304
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Category;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 305
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Category;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Category$Builder;

    .line 307
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Category;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 308
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Category;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->setLabel(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Category$Builder;

    :cond_22
    move-object v0, p0

    .line 310
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 331
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 336
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    :sswitch_d
    return-object p0

    .line 343
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    .line 344
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 348
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    .line 349
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 331
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
    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 236
    check-cast p1, Lcom/google/feedreader/extrpc/Client$Category;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Category;)Lcom/google/feedreader/extrpc/Client$Category$Builder;

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
    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 374
    if-nez p1, :cond_8

    .line 375
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 377
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    .line 378
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->id_:Ljava/lang/Object;

    .line 380
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 389
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    .line 390
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->id_:Ljava/lang/Object;

    .line 392
    return-void
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Category$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 410
    if-nez p1, :cond_8

    .line 411
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 413
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    .line 414
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->label_:Ljava/lang/Object;

    .line 416
    return-object p0
.end method

.method setLabel(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 425
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->bitField0_:I

    .line 426
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Category$Builder;->label_:Ljava/lang/Object;

    .line 428
    return-void
.end method
