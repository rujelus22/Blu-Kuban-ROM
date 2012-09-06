.class public final Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ExtendedGogglesConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;",
        "Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;",
        ">;",
        "Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private annotation_:Ljava/lang/Object;

.field private bitField0_:I

.field private wantAnnotationResults_:Z

.field private wantDisplayResults_:Z

.field private wantEyeCandyResults_:Z

.field private wantGeneralResults_:Z

.field private wantHtmlResults_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 571
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->annotation_:Ljava/lang/Object;

    .line 301
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->maybeForceBuilderInitialization()V

    .line 302
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 1

    .prologue
    .line 295
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->create()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 347
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 350
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 1

    .prologue
    .line 307
    new-instance v0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 305
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 3

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 338
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 340
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->build()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 354
    new-instance v2, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;-><init>(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;Lcom/google/goggles/ExtendedGogglesConfigProtos$1;)V

    .line 355
    iget v3, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 356
    const/4 v1, 0x0

    .line 357
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_56

    .line 360
    :goto_e
    iget-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantAnnotationResults_:Z

    #setter for: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantAnnotationResults_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->access$302(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;Z)Z

    .line 361
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 362
    or-int/lit8 v0, v0, 0x2

    .line 364
    :cond_1a
    iget-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantHtmlResults_:Z

    #setter for: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantHtmlResults_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->access$402(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;Z)Z

    .line 365
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 366
    or-int/lit8 v0, v0, 0x4

    .line 368
    :cond_26
    iget-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantDisplayResults_:Z

    #setter for: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantDisplayResults_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->access$502(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;Z)Z

    .line 369
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 370
    or-int/lit8 v0, v0, 0x8

    .line 372
    :cond_33
    iget-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantEyeCandyResults_:Z

    #setter for: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantEyeCandyResults_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->access$602(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;Z)Z

    .line 373
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_40

    .line 374
    or-int/lit8 v0, v0, 0x10

    .line 376
    :cond_40
    iget-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantGeneralResults_:Z

    #setter for: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->wantGeneralResults_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->access$702(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;Z)Z

    .line 377
    and-int/lit8 v1, v3, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4d

    .line 378
    or-int/lit8 v0, v0, 0x20

    .line 380
    :cond_4d
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->annotation_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->annotation_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->access$802(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    #setter for: Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->access$902(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;I)I

    .line 382
    return-object v2

    :cond_56
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 312
    iput-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantAnnotationResults_:Z

    .line 313
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 314
    iput-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantHtmlResults_:Z

    .line 315
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 316
    iput-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantDisplayResults_:Z

    .line 317
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 318
    iput-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantEyeCandyResults_:Z

    .line 319
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 320
    iput-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantGeneralResults_:Z

    .line 321
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->annotation_:Ljava/lang/Object;

    .line 323
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 324
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->clear()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->clear()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAnnotation()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 2

    .prologue
    .line 595
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 596
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getAnnotation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->annotation_:Ljava/lang/Object;

    .line 598
    return-object p0
.end method

.method public clearWantAnnotationResults()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 2

    .prologue
    .line 480
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantAnnotationResults_:Z

    .line 483
    return-object p0
.end method

.method public clearWantDisplayResults()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 522
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantDisplayResults_:Z

    .line 525
    return-object p0
.end method

.method public clearWantEyeCandyResults()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 2

    .prologue
    .line 543
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantEyeCandyResults_:Z

    .line 546
    return-object p0
.end method

.method public clearWantGeneralResults()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 2

    .prologue
    .line 564
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantGeneralResults_:Z

    .line 567
    return-object p0
.end method

.method public clearWantHtmlResults()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantHtmlResults_:Z

    .line 504
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 3

    .prologue
    .line 328
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->create()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->clone()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->clone()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->clone()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

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
    .line 295
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->clone()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->annotation_:Ljava/lang/Object;

    .line 577
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 578
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 579
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->annotation_:Ljava/lang/Object;

    .line 582
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;
    .registers 2

    .prologue
    .line 332
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    return-object v0
.end method

.method public getWantAnnotationResults()Z
    .registers 2

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantAnnotationResults_:Z

    return v0
.end method

.method public getWantDisplayResults()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantDisplayResults_:Z

    return v0
.end method

.method public getWantEyeCandyResults()Z
    .registers 2

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantEyeCandyResults_:Z

    return v0
.end method

.method public getWantGeneralResults()Z
    .registers 2

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantGeneralResults_:Z

    return v0
.end method

.method public getWantHtmlResults()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantHtmlResults_:Z

    return v0
.end method

.method public hasAnnotation()Z
    .registers 3

    .prologue
    .line 573
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

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

.method public hasWantAnnotationResults()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 468
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasWantDisplayResults()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 510
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

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

.method public hasWantEyeCandyResults()Z
    .registers 3

    .prologue
    .line 531
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

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

.method public hasWantGeneralResults()Z
    .registers 3

    .prologue
    .line 552
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

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

.method public hasWantHtmlResults()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 489
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

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
    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 386
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 405
    :cond_6
    :goto_6
    return-object p0

    .line 387
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->hasWantAnnotationResults()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 388
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getWantAnnotationResults()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->setWantAnnotationResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    .line 390
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->hasWantHtmlResults()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 391
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getWantHtmlResults()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->setWantHtmlResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    .line 393
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->hasWantDisplayResults()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 394
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getWantDisplayResults()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->setWantDisplayResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    .line 396
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->hasWantEyeCandyResults()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 397
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getWantEyeCandyResults()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->setWantEyeCandyResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    .line 399
    :cond_3b
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->hasWantGeneralResults()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 400
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getWantGeneralResults()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->setWantGeneralResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    .line 402
    :cond_48
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->hasAnnotation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 403
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;->getAnnotation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->setAnnotation(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 418
    sparse-switch v0, :sswitch_data_5c

    .line 423
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    :sswitch_d
    return-object p0

    .line 430
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 431
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantAnnotationResults_:Z

    goto :goto_0

    .line 435
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 436
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantHtmlResults_:Z

    goto :goto_0

    .line 440
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 441
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantDisplayResults_:Z

    goto :goto_0

    .line 445
    :sswitch_35
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 446
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantEyeCandyResults_:Z

    goto :goto_0

    .line 450
    :sswitch_42
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 451
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantGeneralResults_:Z

    goto :goto_0

    .line 455
    :sswitch_4f
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 456
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->annotation_:Ljava/lang/Object;

    goto :goto_0

    .line 418
    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x28 -> :sswitch_28
        0x38 -> :sswitch_35
        0x40 -> :sswitch_42
        0x4a -> :sswitch_4f
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
    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 295
    check-cast p1, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom(Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

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
    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAnnotation(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 586
    if-nez p1, :cond_8

    .line 587
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 589
    :cond_8
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 590
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->annotation_:Ljava/lang/Object;

    .line 592
    return-object p0
.end method

.method setAnnotation(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 601
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 602
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->annotation_:Ljava/lang/Object;

    .line 604
    return-void
.end method

.method public setWantAnnotationResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 474
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 475
    iput-boolean p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantAnnotationResults_:Z

    .line 477
    return-object p0
.end method

.method public setWantDisplayResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 517
    iput-boolean p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantDisplayResults_:Z

    .line 519
    return-object p0
.end method

.method public setWantEyeCandyResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 537
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 538
    iput-boolean p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantEyeCandyResults_:Z

    .line 540
    return-object p0
.end method

.method public setWantGeneralResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 558
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 559
    iput-boolean p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantGeneralResults_:Z

    .line 561
    return-object p0
.end method

.method public setWantHtmlResults(Z)Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 495
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->bitField0_:I

    .line 496
    iput-boolean p1, p0, Lcom/google/goggles/ExtendedGogglesConfigProtos$ExtendedGogglesConfig$Builder;->wantHtmlResults_:Z

    .line 498
    return-object p0
.end method
