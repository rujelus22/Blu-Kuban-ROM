.class public final Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ExternalEntityKey.java"

# interfaces
.implements Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;",
        "Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;",
        ">;",
        "Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKeyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private domain_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->domain_:Ljava/lang/Object;

    .line 378
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->id_:Ljava/lang/Object;

    .line 225
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->maybeForceBuilderInitialization()V

    .line 226
    return-void
.end method

.method static synthetic access$100()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    .registers 1

    .prologue
    .line 219
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    .registers 1

    .prologue
    .line 231
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 229
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
    .registers 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    .line 253
    .local v0, result:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 254
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 256
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->build()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
    .registers 6

    .prologue
    .line 270
    new-instance v1, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;-><init>(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$1;)V

    .line 271
    .local v1, result:Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    .line 272
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 273
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 274
    or-int/lit8 v2, v2, 0x1

    .line 276
    :cond_10
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->domain_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->domain_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->access$302(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 278
    or-int/lit8 v2, v2, 0x2

    .line 280
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->access$402(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    #setter for: Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->access$502(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;I)I

    .line 282
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    .registers 2

    .prologue
    .line 235
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->domain_:Ljava/lang/Object;

    .line 237
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    .line 238
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->id_:Ljava/lang/Object;

    .line 239
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    .line 240
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->clear()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->clear()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    .registers 3

    .prologue
    .line 244
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

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
    .line 219
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;
    .registers 2

    .prologue
    .line 248
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    return-object v0
.end method

.method public hasDomain()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 344
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 380
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

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
    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->hasDomain()Z

    move-result v1

    if-nez v1, :cond_8

    .line 305
    :cond_7
    :goto_7
    return v0

    .line 301
    :cond_8
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->hasId()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 305
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 286
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 293
    :cond_6
    :goto_6
    return-object p0

    .line 287
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->hasDomain()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 288
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->setDomain(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    .line 290
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->hasId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->setId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 314
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 319
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    :sswitch_d
    return-object p0

    .line 326
    :sswitch_e
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    .line 327
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->domain_:Ljava/lang/Object;

    goto :goto_0

    .line 331
    :sswitch_1b
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    .line 332
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 314
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
    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 219
    check-cast p1, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

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
    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 357
    if-nez p1, :cond_8

    .line 358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 360
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    .line 361
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->domain_:Ljava/lang/Object;

    .line 363
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 393
    if-nez p1, :cond_8

    .line 394
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 396
    :cond_8
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->bitField0_:I

    .line 397
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/ExternalEntityKey$Builder;->id_:Ljava/lang/Object;

    .line 399
    return-object p0
.end method
