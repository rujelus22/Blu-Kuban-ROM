.class public final Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HtmlResultProtos.java"

# interfaces
.implements Lcom/google/goggles/HtmlResultProtos$HtmlResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/HtmlResultProtos$HtmlResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/HtmlResultProtos$HtmlResult;",
        "Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;",
        ">;",
        "Lcom/google/goggles/HtmlResultProtos$HtmlResultOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private htmlDocument_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;

.field private validMs_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->htmlDocument_:Ljava/lang/Object;

    .line 416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->url_:Ljava/lang/Object;

    .line 452
    const v0, 0x36ee80

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->validMs_:I

    .line 257
    invoke-direct {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->maybeForceBuilderInitialization()V

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;)Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildParsed()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 1

    .prologue
    .line 251
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->create()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildPartial()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 297
    invoke-static {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 300
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 1

    .prologue
    .line 263
    new-instance v0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    invoke-direct {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 261
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 3

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildPartial()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 288
    invoke-static {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 290
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->build()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 304
    new-instance v2, Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;-><init>(Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;Lcom/google/goggles/HtmlResultProtos$1;)V

    .line 305
    iget v3, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 306
    const/4 v1, 0x0

    .line 307
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2f

    .line 310
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->htmlDocument_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/HtmlResultProtos$HtmlResult;->htmlDocument_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->access$302(Lcom/google/goggles/HtmlResultProtos$HtmlResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 312
    or-int/lit8 v0, v0, 0x2

    .line 314
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/HtmlResultProtos$HtmlResult;->url_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->access$402(Lcom/google/goggles/HtmlResultProtos$HtmlResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_26

    .line 316
    or-int/lit8 v0, v0, 0x4

    .line 318
    :cond_26
    iget v1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->validMs_:I

    #setter for: Lcom/google/goggles/HtmlResultProtos$HtmlResult;->validMs_:I
    invoke-static {v2, v1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->access$502(Lcom/google/goggles/HtmlResultProtos$HtmlResult;I)I

    .line 319
    #setter for: Lcom/google/goggles/HtmlResultProtos$HtmlResult;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->access$602(Lcom/google/goggles/HtmlResultProtos$HtmlResult;I)I

    .line 320
    return-object v2

    :cond_2f
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildPartial()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 2

    .prologue
    .line 267
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 268
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->htmlDocument_:Ljava/lang/Object;

    .line 269
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 270
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->url_:Ljava/lang/Object;

    .line 271
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 272
    const v0, 0x36ee80

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->validMs_:I

    .line 273
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 274
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->clear()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->clear()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHtmlDocument()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 405
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getDefaultInstance()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getHtmlDocument()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->htmlDocument_:Ljava/lang/Object;

    .line 407
    return-object p0
.end method

.method public clearUrl()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 440
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 441
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getDefaultInstance()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->url_:Ljava/lang/Object;

    .line 443
    return-object p0
.end method

.method public clearValidMs()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 467
    const v0, 0x36ee80

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->validMs_:I

    .line 469
    return-object p0
.end method

.method public clone()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 3

    .prologue
    .line 278
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->create()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->buildPartial()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom(Lcom/google/goggles/HtmlResultProtos$HtmlResult;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->clone()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->clone()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->clone()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

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
    .line 251
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->clone()Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/HtmlResultProtos$HtmlResult;
    .registers 2

    .prologue
    .line 282
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getDefaultInstance()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->getDefaultInstanceForType()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->getDefaultInstanceForType()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlDocument()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->htmlDocument_:Ljava/lang/Object;

    .line 386
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 387
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 388
    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->htmlDocument_:Ljava/lang/Object;

    .line 391
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->url_:Ljava/lang/Object;

    .line 422
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 423
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 424
    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->url_:Ljava/lang/Object;

    .line 427
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getValidMs()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 457
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->validMs_:I

    return v0
.end method

.method public hasHtmlDocument()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 382
    iget v1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrl()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 418
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

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

.method public hasValidMs()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/HtmlResultProtos$HtmlResult;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 324
    invoke-static {}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getDefaultInstance()Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 334
    :cond_6
    :goto_6
    return-object p0

    .line 325
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->hasHtmlDocument()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 326
    invoke-virtual {p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getHtmlDocument()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->setHtmlDocument(Ljava/lang/String;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    .line 328
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 329
    invoke-virtual {p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->setUrl(Ljava/lang/String;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    .line 331
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->hasValidMs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 332
    invoke-virtual {p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult;->getValidMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->setValidMs(I)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 347
    sparse-switch v0, :sswitch_data_36

    .line 352
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    :sswitch_d
    return-object p0

    .line 359
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 360
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->htmlDocument_:Ljava/lang/Object;

    goto :goto_0

    .line 364
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 365
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 369
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 370
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->validMs_:I

    goto :goto_0

    .line 347
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
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
    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 251
    check-cast p1, Lcom/google/goggles/HtmlResultProtos$HtmlResult;

    invoke-virtual {p0, p1}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom(Lcom/google/goggles/HtmlResultProtos$HtmlResult;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

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
    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHtmlDocument(Ljava/lang/String;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    if-nez p1, :cond_8

    .line 396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 398
    :cond_8
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 399
    iput-object p1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->htmlDocument_:Ljava/lang/Object;

    .line 401
    return-object p0
.end method

.method setHtmlDocument(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 410
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 411
    iput-object p1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->htmlDocument_:Ljava/lang/Object;

    .line 413
    return-void
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 431
    if-nez p1, :cond_8

    .line 432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 434
    :cond_8
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 435
    iput-object p1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->url_:Ljava/lang/Object;

    .line 437
    return-object p0
.end method

.method setUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 446
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 447
    iput-object p1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->url_:Ljava/lang/Object;

    .line 449
    return-void
.end method

.method public setValidMs(I)Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 460
    iget v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->bitField0_:I

    .line 461
    iput p1, p0, Lcom/google/goggles/HtmlResultProtos$HtmlResult$Builder;->validMs_:I

    .line 463
    return-object p0
.end method
