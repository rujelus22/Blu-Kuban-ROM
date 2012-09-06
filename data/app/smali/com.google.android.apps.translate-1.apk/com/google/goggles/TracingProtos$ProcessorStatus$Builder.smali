.class public final Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingProtos$ProcessorStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos$ProcessorStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/TracingProtos$ProcessorStatus;",
        "Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;",
        ">;",
        "Lcom/google/goggles/TracingProtos$ProcessorStatusOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cumulativeProcessTimeMs_:I

.field private dutyPeriod_:I

.field private numFrames_:I

.field private type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2291
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2437
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->BARCODE_SCANNER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    .line 2503
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->dutyPeriod_:I

    .line 2292
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->maybeForceBuilderInitialization()V

    .line 2293
    return-void
.end method

.method static synthetic access$2600(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2286
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 1

    .prologue
    .line 2286
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->create()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2332
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    .line 2333
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2334
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2337
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 1

    .prologue
    .line 2298
    new-instance v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2296
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 3

    .prologue
    .line 2323
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    .line 2324
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2325
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2327
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->build()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 2341
    new-instance v2, Lcom/google/goggles/TracingProtos$ProcessorStatus;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;-><init>(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;Lcom/google/goggles/TracingProtos$1;)V

    .line 2342
    iget v3, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2343
    const/4 v1, 0x0

    .line 2344
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3c

    .line 2347
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    #setter for: Lcom/google/goggles/TracingProtos$ProcessorStatus;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->access$2902(Lcom/google/goggles/TracingProtos$ProcessorStatus;Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    .line 2348
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 2349
    or-int/lit8 v0, v0, 0x2

    .line 2351
    :cond_1a
    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->cumulativeProcessTimeMs_:I

    #setter for: Lcom/google/goggles/TracingProtos$ProcessorStatus;->cumulativeProcessTimeMs_:I
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->access$3002(Lcom/google/goggles/TracingProtos$ProcessorStatus;I)I

    .line 2352
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 2353
    or-int/lit8 v0, v0, 0x4

    .line 2355
    :cond_26
    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->numFrames_:I

    #setter for: Lcom/google/goggles/TracingProtos$ProcessorStatus;->numFrames_:I
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->access$3102(Lcom/google/goggles/TracingProtos$ProcessorStatus;I)I

    .line 2356
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_33

    .line 2357
    or-int/lit8 v0, v0, 0x8

    .line 2359
    :cond_33
    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->dutyPeriod_:I

    #setter for: Lcom/google/goggles/TracingProtos$ProcessorStatus;->dutyPeriod_:I
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->access$3202(Lcom/google/goggles/TracingProtos$ProcessorStatus;I)I

    .line 2360
    #setter for: Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->access$3302(Lcom/google/goggles/TracingProtos$ProcessorStatus;I)I

    .line 2361
    return-object v2

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2303
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->BARCODE_SCANNER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    .line 2304
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2305
    iput v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->cumulativeProcessTimeMs_:I

    .line 2306
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2307
    iput v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->numFrames_:I

    .line 2308
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2309
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->dutyPeriod_:I

    .line 2310
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2311
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->clear()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->clear()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCumulativeProcessTimeMs()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 2

    .prologue
    .line 2475
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2476
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->cumulativeProcessTimeMs_:I

    .line 2478
    return-object p0
.end method

.method public clearDutyPeriod()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 2

    .prologue
    .line 2517
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2518
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->dutyPeriod_:I

    .line 2520
    return-object p0
.end method

.method public clearNumFrames()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 2

    .prologue
    .line 2496
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2497
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->numFrames_:I

    .line 2499
    return-object p0
.end method

.method public clearType()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 2

    .prologue
    .line 2454
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2455
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->BARCODE_SCANNER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    .line 2457
    return-object p0
.end method

.method public clone()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 3

    .prologue
    .line 2315
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->create()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$ProcessorStatus;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->clone()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->clone()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->clone()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

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
    .line 2286
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->clone()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCumulativeProcessTimeMs()I
    .registers 2

    .prologue
    .line 2466
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->cumulativeProcessTimeMs_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 2

    .prologue
    .line 2319
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->getDefaultInstance()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDutyPeriod()I
    .registers 2

    .prologue
    .line 2508
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->dutyPeriod_:I

    return v0
.end method

.method public getNumFrames()I
    .registers 2

    .prologue
    .line 2487
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->numFrames_:I

    return v0
.end method

.method public getType()Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    .registers 2

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    return-object v0
.end method

.method public hasCumulativeProcessTimeMs()Z
    .registers 3

    .prologue
    .line 2463
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

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

.method public hasDutyPeriod()Z
    .registers 3

    .prologue
    .line 2505
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasNumFrames()Z
    .registers 3

    .prologue
    .line 2484
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2439
    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

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
    .line 2382
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->hasType()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2384
    const/4 v0, 0x0

    .line 2386
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/TracingProtos$ProcessorStatus;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2365
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->getDefaultInstance()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2378
    :cond_6
    :goto_6
    return-object p0

    .line 2366
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2367
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->getType()Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->setType(Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    .line 2369
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->hasCumulativeProcessTimeMs()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2370
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->getCumulativeProcessTimeMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->setCumulativeProcessTimeMs(I)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    .line 2372
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->hasNumFrames()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2373
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->getNumFrames()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->setNumFrames(I)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    .line 2375
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->hasDutyPeriod()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2376
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->getDutyPeriod()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->setDutyPeriod(I)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2394
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2395
    sparse-switch v0, :sswitch_data_48

    .line 2400
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2402
    :sswitch_d
    return-object p0

    .line 2407
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2408
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->valueOf(I)Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    move-result-object v0

    .line 2409
    if-eqz v0, :cond_0

    .line 2410
    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2411
    iput-object v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    goto :goto_0

    .line 2416
    :sswitch_21
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2417
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->cumulativeProcessTimeMs_:I

    goto :goto_0

    .line 2421
    :sswitch_2e
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2422
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->numFrames_:I

    goto :goto_0

    .line 2426
    :sswitch_3b
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2427
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->dutyPeriod_:I

    goto :goto_0

    .line 2395
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x18 -> :sswitch_2e
        0x20 -> :sswitch_3b
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
    .line 2286
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2286
    check-cast p1, Lcom/google/goggles/TracingProtos$ProcessorStatus;

    invoke-virtual {p0, p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$ProcessorStatus;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

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
    .line 2286
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCumulativeProcessTimeMs(I)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2469
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2470
    iput p1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->cumulativeProcessTimeMs_:I

    .line 2472
    return-object p0
.end method

.method public setDutyPeriod(I)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2511
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2512
    iput p1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->dutyPeriod_:I

    .line 2514
    return-object p0
.end method

.method public setNumFrames(I)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2490
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2491
    iput p1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->numFrames_:I

    .line 2493
    return-object p0
.end method

.method public setType(Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2445
    if-nez p1, :cond_8

    .line 2446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2448
    :cond_8
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->bitField0_:I

    .line 2449
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    .line 2451
    return-object p0
.end method
