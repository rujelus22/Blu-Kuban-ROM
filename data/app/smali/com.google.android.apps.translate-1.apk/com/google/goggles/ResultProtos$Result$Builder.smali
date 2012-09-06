.class public final Lcom/google/goggles/ResultProtos$Result$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "ResultProtos.java"

# interfaces
.implements Lcom/google/goggles/ResultProtos$ResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ResultProtos$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/goggles/ResultProtos$Result;",
        "Lcom/google/goggles/ResultProtos$Result$Builder;",
        ">;",
        "Lcom/google/goggles/ResultProtos$ResultOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->name_:Ljava/lang/Object;

    .line 393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->type_:Ljava/lang/Object;

    .line 243
    invoke-direct {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->maybeForceBuilderInitialization()V

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/ResultProtos$Result$Builder;)Lcom/google/goggles/ResultProtos$Result;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->buildParsed()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 1

    .prologue
    .line 238
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result$Builder;->create()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ResultProtos$Result;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->buildPartial()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/google/goggles/ResultProtos$Result;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 281
    invoke-static {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 284
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 1

    .prologue
    .line 249
    new-instance v0, Lcom/google/goggles/ResultProtos$Result$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 247
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/ResultProtos$Result;
    .registers 3

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->buildPartial()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/google/goggles/ResultProtos$Result;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 272
    invoke-static {v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 274
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->build()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ResultProtos$Result;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 288
    new-instance v2, Lcom/google/goggles/ResultProtos$Result;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ResultProtos$Result;-><init>(Lcom/google/goggles/ResultProtos$Result$Builder;Lcom/google/goggles/ResultProtos$1;)V

    .line 289
    iget v3, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    .line 290
    const/4 v1, 0x0

    .line 291
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_23

    .line 294
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ResultProtos$Result;->name_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ResultProtos$Result;->access$302(Lcom/google/goggles/ResultProtos$Result;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 296
    or-int/lit8 v0, v0, 0x2

    .line 298
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->type_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ResultProtos$Result;->type_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ResultProtos$Result;->access$402(Lcom/google/goggles/ResultProtos$Result;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    #setter for: Lcom/google/goggles/ResultProtos$Result;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ResultProtos$Result;->access$502(Lcom/google/goggles/ResultProtos$Result;I)I

    .line 300
    return-object v2

    :cond_23
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->buildPartial()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 2

    .prologue
    .line 253
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 254
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->name_:Ljava/lang/Object;

    .line 255
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    .line 256
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->type_:Ljava/lang/Object;

    .line 257
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    .line 258
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->clear()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->clear()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->clear()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 381
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    .line 382
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->getDefaultInstance()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ResultProtos$Result;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->name_:Ljava/lang/Object;

    .line 384
    return-object p0
.end method

.method public clearType()Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 417
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    .line 418
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->getDefaultInstance()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ResultProtos$Result;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->type_:Ljava/lang/Object;

    .line 420
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 3

    .prologue
    .line 262
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result$Builder;->create()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->buildPartial()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom(Lcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->clone()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->clone()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->clone()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->clone()Lcom/google/goggles/ResultProtos$Result$Builder;

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
    .line 238
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->clone()Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ResultProtos$Result;
    .registers 2

    .prologue
    .line 266
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->getDefaultInstance()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->name_:Ljava/lang/Object;

    .line 363
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 364
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 365
    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->name_:Ljava/lang/Object;

    .line 368
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->type_:Ljava/lang/Object;

    .line 399
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 400
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 401
    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->type_:Ljava/lang/Object;

    .line 404
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasName()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 359
    iget v1, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/goggles/ResultProtos$Result$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 318
    const/4 v0, 0x0

    .line 320
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 3
    .parameter

    .prologue
    .line 304
    invoke-static {}, Lcom/google/goggles/ResultProtos$Result;->getDefaultInstance()Lcom/google/goggles/ResultProtos$Result;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 312
    :goto_6
    return-object p0

    .line 305
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/ResultProtos$Result;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 306
    invoke-virtual {p1}, Lcom/google/goggles/ResultProtos$Result;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->setName(Ljava/lang/String;)Lcom/google/goggles/ResultProtos$Result$Builder;

    .line 308
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/ResultProtos$Result;->hasType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 309
    invoke-virtual {p1}, Lcom/google/goggles/ResultProtos$Result;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->setType(Ljava/lang/String;)Lcom/google/goggles/ResultProtos$Result$Builder;

    .line 311
    :cond_21
    invoke-virtual {p0, p1}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 329
    sparse-switch v0, :sswitch_data_28

    .line 334
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ResultProtos$Result$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    :sswitch_d
    return-object p0

    .line 341
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    .line 342
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 346
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    .line 347
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 329
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 238
    check-cast p1, Lcom/google/goggles/ResultProtos$Result;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom(Lcom/google/goggles/ResultProtos$Result;)Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ResultProtos$Result$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ResultProtos$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    if-nez p1, :cond_8

    .line 373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 375
    :cond_8
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    .line 376
    iput-object p1, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->name_:Ljava/lang/Object;

    .line 378
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 387
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    .line 388
    iput-object p1, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->name_:Ljava/lang/Object;

    .line 390
    return-void
.end method

.method public setType(Ljava/lang/String;)Lcom/google/goggles/ResultProtos$Result$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 408
    if-nez p1, :cond_8

    .line 409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 411
    :cond_8
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    .line 412
    iput-object p1, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->type_:Ljava/lang/Object;

    .line 414
    return-object p0
.end method

.method setType(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 423
    iget v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->bitField0_:I

    .line 424
    iput-object p1, p0, Lcom/google/goggles/ResultProtos$Result$Builder;->type_:Ljava/lang/Object;

    .line 426
    return-void
.end method
