.class public final Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "OndeviceSpec.java"

# interfaces
.implements Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpecOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;",
        ">;",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpecOrBuilder;"
    }
.end annotation


# instance fields
.field private beamSize_:I

.field private bitField0_:I

.field private classifierType_:Ljava/lang/Object;

.field private inkreader_:Ljava/lang/Object;

.field private languageModel_:Ljava/lang/Object;

.field private lmOrder_:I

.field private model_:Ljava/lang/Object;

.field private symbols_:Ljava/lang/Object;

.field private weights_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3365
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 3612
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 3648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 3684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->symbols_:Ljava/lang/Object;

    .line 3720
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->languageModel_:Ljava/lang/Object;

    .line 3798
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    .line 3366
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->maybeForceBuilderInitialization()V

    .line 3367
    return-void
.end method

.method static synthetic access$4000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3360
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 1

    .prologue
    .line 3360
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3414
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    .line 3415
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3416
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3419
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 1

    .prologue
    .line 3372
    new-instance v0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    invoke-direct {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;-><init>()V

    return-object v0
.end method

.method private ensureWeightsIsMutable()V
    .registers 3

    .prologue
    .line 3800
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 3801
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    .line 3802
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3804
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3370
    return-void
.end method


# virtual methods
.method public addAllWeights(Ljava/lang/Iterable;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;"
        }
    .end annotation

    .prologue
    .line 3830
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->ensureWeightsIsMutable()V

    .line 3831
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3833
    return-object p0
.end method

.method public addWeights(F)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3823
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->ensureWeightsIsMutable()V

    .line 3824
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3826
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->build()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 3

    .prologue
    .line 3405
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    .line 3406
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3407
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3409
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 3423
    new-instance v2, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;-><init>(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;Lcom/google/protos/research_handwriting/OndeviceSpec$1;)V

    .line 3424
    iget v3, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3425
    const/4 v1, 0x0

    .line 3426
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7e

    .line 3429
    :goto_e
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->inkreader_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->access$4302(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3430
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 3431
    or-int/lit8 v0, v0, 0x2

    .line 3433
    :cond_1a
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->model_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->access$4402(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3434
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 3435
    or-int/lit8 v0, v0, 0x4

    .line 3437
    :cond_26
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->classifierType_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->access$4502(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3438
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 3439
    or-int/lit8 v0, v0, 0x8

    .line 3441
    :cond_33
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->symbols_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->symbols_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->access$4602(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3442
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_40

    .line 3443
    or-int/lit8 v0, v0, 0x10

    .line 3445
    :cond_40
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->languageModel_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->languageModel_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->access$4702(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3446
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4d

    .line 3447
    or-int/lit8 v0, v0, 0x20

    .line 3449
    :cond_4d
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->lmOrder_:I

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->lmOrder_:I
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->access$4802(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;I)I

    .line 3450
    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5a

    .line 3451
    or-int/lit8 v0, v0, 0x40

    .line 3453
    :cond_5a
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->beamSize_:I

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->beamSize_:I
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->access$4902(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;I)I

    .line 3454
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_75

    .line 3455
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    .line 3456
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3458
    :cond_75
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->weights_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->access$5002(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;Ljava/util/List;)Ljava/util/List;

    .line 3459
    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->access$5102(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;I)I

    .line 3460
    return-object v2

    :cond_7e
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->clear()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->clear()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3376
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 3378
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 3380
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 3382
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3383
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->symbols_:Ljava/lang/Object;

    .line 3384
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3385
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->languageModel_:Ljava/lang/Object;

    .line 3386
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3387
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->lmOrder_:I

    .line 3388
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3389
    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->beamSize_:I

    .line 3390
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    .line 3392
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3393
    return-object p0
.end method

.method public clearBeamSize()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 3791
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3792
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->beamSize_:I

    .line 3794
    return-object p0
.end method

.method public clearClassifierType()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 3672
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3673
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getClassifierType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 3675
    return-object p0
.end method

.method public clearInkreader()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 3600
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3601
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getInkreader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 3603
    return-object p0
.end method

.method public clearLanguageModel()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 3744
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3745
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getLanguageModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->languageModel_:Ljava/lang/Object;

    .line 3747
    return-object p0
.end method

.method public clearLmOrder()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 3770
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3771
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->lmOrder_:I

    .line 3773
    return-object p0
.end method

.method public clearModel()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 3636
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3637
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 3639
    return-object p0
.end method

.method public clearSymbols()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 3708
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3709
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getSymbols()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->symbols_:Ljava/lang/Object;

    .line 3711
    return-object p0
.end method

.method public clearWeights()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 2

    .prologue
    .line 3836
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    .line 3837
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3839
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 3

    .prologue
    .line 3397
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

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
    .line 3360
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBeamSize()I
    .registers 2

    .prologue
    .line 3782
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->beamSize_:I

    return v0
.end method

.method public getClassifierType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3653
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 3654
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3655
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3656
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 3659
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;
    .registers 2

    .prologue
    .line 3401
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    return-object v0
.end method

.method public getInkreader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3581
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 3582
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3583
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3584
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 3587
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getLanguageModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3725
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->languageModel_:Ljava/lang/Object;

    .line 3726
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3727
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3728
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->languageModel_:Ljava/lang/Object;

    .line 3731
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getLmOrder()I
    .registers 2

    .prologue
    .line 3761
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->lmOrder_:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 3618
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3619
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3620
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 3623
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getSymbols()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->symbols_:Ljava/lang/Object;

    .line 3690
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3691
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3692
    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->symbols_:Ljava/lang/Object;

    .line 3695
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getWeights(I)F
    .registers 3
    .parameter

    .prologue
    .line 3813
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getWeightsCount()I
    .registers 2

    .prologue
    .line 3810
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWeightsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3807
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasBeamSize()Z
    .registers 3

    .prologue
    .line 3779
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasClassifierType()Z
    .registers 3

    .prologue
    .line 3650
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

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

.method public hasInkreader()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3578
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLanguageModel()Z
    .registers 3

    .prologue
    .line 3722
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLmOrder()Z
    .registers 3

    .prologue
    .line 3758
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasModel()Z
    .registers 3

    .prologue
    .line 3614
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

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

.method public hasSymbols()Z
    .registers 3

    .prologue
    .line 3686
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3500
    const/4 v0, 0x1

    return v0
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
    .line 3360
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3360
    check-cast p1, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    invoke-virtual {p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

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
    .line 3360
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3508
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3509
    sparse-switch v0, :sswitch_data_96

    .line 3514
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3516
    :sswitch_d
    return-object p0

    .line 3521
    :sswitch_e
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3522
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    goto :goto_0

    .line 3526
    :sswitch_1b
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3527
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    goto :goto_0

    .line 3531
    :sswitch_28
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3532
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    goto :goto_0

    .line 3536
    :sswitch_35
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3537
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->symbols_:Ljava/lang/Object;

    goto :goto_0

    .line 3541
    :sswitch_42
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3542
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->languageModel_:Ljava/lang/Object;

    goto :goto_0

    .line 3546
    :sswitch_4f
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3547
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->lmOrder_:I

    goto :goto_0

    .line 3551
    :sswitch_5c
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3552
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->beamSize_:I

    goto :goto_0

    .line 3556
    :sswitch_69
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->ensureWeightsIsMutable()V

    .line 3557
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3561
    :sswitch_7a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 3562
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 3563
    :goto_82
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_90

    .line 3564
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->addWeights(F)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    goto :goto_82

    .line 3566
    :cond_90
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 3509
    nop

    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_42
        0x30 -> :sswitch_4f
        0x38 -> :sswitch_5c
        0x42 -> :sswitch_7a
        0x45 -> :sswitch_69
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 4
    .parameter

    .prologue
    .line 3464
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3496
    :cond_6
    :goto_6
    return-object p0

    .line 3465
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->hasInkreader()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3466
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getInkreader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->setInkreader(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    .line 3468
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3469
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->setModel(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    .line 3471
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->hasClassifierType()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3472
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getClassifierType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->setClassifierType(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    .line 3474
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->hasSymbols()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3475
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getSymbols()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->setSymbols(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    .line 3477
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->hasLanguageModel()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3478
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getLanguageModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->setLanguageModel(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    .line 3480
    :cond_48
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->hasLmOrder()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3481
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getLmOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->setLmOrder(I)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    .line 3483
    :cond_55
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->hasBeamSize()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3484
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->getBeamSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->setBeamSize(I)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;

    .line 3486
    :cond_62
    #getter for: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->weights_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->access$5000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3487
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 3488
    #getter for: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->weights_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->access$5000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    .line 3489
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    goto :goto_6

    .line 3491
    :cond_81
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->ensureWeightsIsMutable()V

    .line 3492
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    #getter for: Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->weights_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;->access$5000(Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public setBeamSize(I)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3785
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3786
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->beamSize_:I

    .line 3788
    return-object p0
.end method

.method public setClassifierType(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3663
    if-nez p1, :cond_8

    .line 3664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3666
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3667
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 3669
    return-object p0
.end method

.method setClassifierType(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 3678
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3679
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->classifierType_:Ljava/lang/Object;

    .line 3681
    return-void
.end method

.method public setInkreader(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3591
    if-nez p1, :cond_8

    .line 3592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3594
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3595
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 3597
    return-object p0
.end method

.method setInkreader(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 3606
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3607
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->inkreader_:Ljava/lang/Object;

    .line 3609
    return-void
.end method

.method public setLanguageModel(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3735
    if-nez p1, :cond_8

    .line 3736
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3738
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3739
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->languageModel_:Ljava/lang/Object;

    .line 3741
    return-object p0
.end method

.method setLanguageModel(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 3750
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3751
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->languageModel_:Ljava/lang/Object;

    .line 3753
    return-void
.end method

.method public setLmOrder(I)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3764
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3765
    iput p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->lmOrder_:I

    .line 3767
    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3627
    if-nez p1, :cond_8

    .line 3628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3630
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3631
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 3633
    return-object p0
.end method

.method setModel(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 3642
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3643
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->model_:Ljava/lang/Object;

    .line 3645
    return-void
.end method

.method public setSymbols(Ljava/lang/String;)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3699
    if-nez p1, :cond_8

    .line 3700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3702
    :cond_8
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3703
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->symbols_:Ljava/lang/Object;

    .line 3705
    return-object p0
.end method

.method setSymbols(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 3714
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->bitField0_:I

    .line 3715
    iput-object p1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->symbols_:Ljava/lang/Object;

    .line 3717
    return-void
.end method

.method public setWeights(IF)Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3817
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->ensureWeightsIsMutable()V

    .line 3818
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$WordRecognizerSpec$Builder;->weights_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3820
    return-object p0
.end method
