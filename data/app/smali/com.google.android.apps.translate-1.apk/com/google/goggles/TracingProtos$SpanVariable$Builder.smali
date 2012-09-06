.class public final Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingProtos$SpanVariableOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos$SpanVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/TracingProtos$SpanVariable;",
        "Lcom/google/goggles/TracingProtos$SpanVariable$Builder;",
        ">;",
        "Lcom/google/goggles/TracingProtos$SpanVariableOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private durationMs_:I

.field private startMs_:I

.field private type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 444
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->START_TO_RENDERED:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 309
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->maybeForceBuilderInitialization()V

    .line 310
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;)Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 1

    .prologue
    .line 303
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->create()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$SpanVariable;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 349
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 352
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 1

    .prologue
    .line 315
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 313
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 3

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$SpanVariable;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 340
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 342
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->build()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 356
    new-instance v2, Lcom/google/goggles/TracingProtos$SpanVariable;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/TracingProtos$SpanVariable;-><init>(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;Lcom/google/goggles/TracingProtos$1;)V

    .line 357
    iget v3, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 358
    const/4 v1, 0x0

    .line 359
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2f

    .line 362
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    #setter for: Lcom/google/goggles/TracingProtos$SpanVariable;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$SpanVariable;->access$302(Lcom/google/goggles/TracingProtos$SpanVariable;Lcom/google/goggles/TracingProtos$SpanVariable$Type;)Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 363
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 364
    or-int/lit8 v0, v0, 0x2

    .line 366
    :cond_1a
    iget v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->startMs_:I

    #setter for: Lcom/google/goggles/TracingProtos$SpanVariable;->startMs_:I
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$SpanVariable;->access$402(Lcom/google/goggles/TracingProtos$SpanVariable;I)I

    .line 367
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_26

    .line 368
    or-int/lit8 v0, v0, 0x4

    .line 370
    :cond_26
    iget v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->durationMs_:I

    #setter for: Lcom/google/goggles/TracingProtos$SpanVariable;->durationMs_:I
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$SpanVariable;->access$502(Lcom/google/goggles/TracingProtos$SpanVariable;I)I

    .line 371
    #setter for: Lcom/google/goggles/TracingProtos$SpanVariable;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/TracingProtos$SpanVariable;->access$602(Lcom/google/goggles/TracingProtos$SpanVariable;I)I

    .line 372
    return-object v2

    :cond_2f
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 319
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 320
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->START_TO_RENDERED:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 321
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 322
    iput v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->startMs_:I

    .line 323
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 324
    iput v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->durationMs_:I

    .line 325
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 326
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->clear()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->clear()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDurationMs()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 2

    .prologue
    .line 503
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 504
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->durationMs_:I

    .line 506
    return-object p0
.end method

.method public clearStartMs()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 2

    .prologue
    .line 482
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->startMs_:I

    .line 485
    return-object p0
.end method

.method public clearType()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 2

    .prologue
    .line 461
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 462
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->START_TO_RENDERED:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 464
    return-object p0
.end method

.method public clone()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 3

    .prologue
    .line 330
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->create()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$SpanVariable;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->clone()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->clone()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->clone()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

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
    .line 303
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->clone()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$SpanVariable;
    .registers 2

    .prologue
    .line 334
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->getDefaultInstance()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMs()I
    .registers 2

    .prologue
    .line 494
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->durationMs_:I

    return v0
.end method

.method public getStartMs()I
    .registers 2

    .prologue
    .line 473
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->startMs_:I

    return v0
.end method

.method public getType()Lcom/google/goggles/TracingProtos$SpanVariable$Type;
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    return-object v0
.end method

.method public hasDurationMs()Z
    .registers 3

    .prologue
    .line 491
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

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

.method public hasStartMs()Z
    .registers 3

    .prologue
    .line 470
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 446
    iget v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->hasType()Z

    move-result v1

    if-nez v1, :cond_8

    .line 398
    :cond_7
    :goto_7
    return v0

    .line 394
    :cond_8
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->hasStartMs()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 398
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/TracingProtos$SpanVariable;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 3
    .parameter

    .prologue
    .line 376
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->getDefaultInstance()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 386
    :cond_6
    :goto_6
    return-object p0

    .line 377
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$SpanVariable;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 378
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$SpanVariable;->getType()Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->setType(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    .line 380
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$SpanVariable;->hasStartMs()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 381
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$SpanVariable;->getStartMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->setStartMs(I)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    .line 383
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$SpanVariable;->hasDurationMs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 384
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$SpanVariable;->getDurationMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->setDurationMs(I)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 407
    sparse-switch v0, :sswitch_data_3c

    .line 412
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    :sswitch_d
    return-object p0

    .line 419
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 420
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->valueOf(I)Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    .line 422
    iget v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 423
    iput-object v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_0

    .line 428
    :sswitch_21
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 429
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->startMs_:I

    goto :goto_0

    .line 433
    :sswitch_2e
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 434
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->durationMs_:I

    goto :goto_0

    .line 407
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x18 -> :sswitch_2e
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
    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 303
    check-cast p1, Lcom/google/goggles/TracingProtos$SpanVariable;

    invoke-virtual {p0, p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$SpanVariable;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

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
    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDurationMs(I)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 3
    .parameter

    .prologue
    .line 497
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 498
    iput p1, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->durationMs_:I

    .line 500
    return-object p0
.end method

.method public setStartMs(I)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 3
    .parameter

    .prologue
    .line 476
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 477
    iput p1, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->startMs_:I

    .line 479
    return-object p0
.end method

.method public setType(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 3
    .parameter

    .prologue
    .line 452
    if-nez p1, :cond_8

    .line 453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 455
    :cond_8
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->bitField0_:I

    .line 456
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 458
    return-object p0
.end method
