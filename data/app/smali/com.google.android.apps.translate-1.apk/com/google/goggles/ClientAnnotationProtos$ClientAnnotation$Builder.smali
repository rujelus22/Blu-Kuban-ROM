.class public final Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClientAnnotationProtos.java"

# interfaces
.implements Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;",
        "Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;",
        ">;",
        "Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotationOrBuilder;"
    }
.end annotation


# instance fields
.field private barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

.field private bitField0_:I

.field private boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private score_:F


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 367
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 431
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getDefaultInstance()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    .line 224
    invoke-direct {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->maybeForceBuilderInitialization()V

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 1

    .prologue
    .line 218
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->create()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 264
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 267
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 1

    .prologue
    .line 230
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 228
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 255
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 257
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->build()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 271
    new-instance v2, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;-><init>(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;Lcom/google/goggles/ClientAnnotationProtos$1;)V

    .line 272
    iget v3, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 273
    const/4 v1, 0x0

    .line 274
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2f

    .line 277
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    #setter for: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v2, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->access$302(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 278
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 279
    or-int/lit8 v0, v0, 0x2

    .line 281
    :cond_1a
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->score_:F

    #setter for: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->score_:F
    invoke-static {v2, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->access$402(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;F)F

    .line 282
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_26

    .line 283
    or-int/lit8 v0, v0, 0x4

    .line 285
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    #setter for: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    invoke-static {v2, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->access$502(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    .line 286
    #setter for: Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->access$602(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;I)I

    .line 287
    return-object v2

    :cond_2f
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 235
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 236
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->score_:F

    .line 238
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 239
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getDefaultInstance()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    .line 240
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 241
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->clear()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->clear()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBarcode()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 2

    .prologue
    .line 467
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getDefaultInstance()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    .line 469
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 470
    return-object p0
.end method

.method public clearBoundingBox()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 2

    .prologue
    .line 403
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 405
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 406
    return-object p0
.end method

.method public clearScore()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 2

    .prologue
    .line 424
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 425
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->score_:F

    .line 427
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 3

    .prologue
    .line 245
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->create()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->clone()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->clone()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->clone()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

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
    .line 218
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->clone()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBarcode()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    return-object v0
.end method

.method public getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 2

    .prologue
    .line 249
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->getDefaultInstance()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public getScore()F
    .registers 2

    .prologue
    .line 415
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->score_:F

    return v0
.end method

.method public hasBarcode()Z
    .registers 3

    .prologue
    .line 433
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

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

.method public hasBoundingBox()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 369
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasScore()Z
    .registers 3

    .prologue
    .line 412
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

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

    .line 305
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->hasBoundingBox()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 306
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_12

    .line 317
    :cond_11
    :goto_11
    return v0

    .line 311
    :cond_12
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->hasBarcode()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 312
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->getBarcode()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 317
    :cond_22
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeBarcode(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 455
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getDefaultInstance()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 457
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    .line 463
    :goto_1f
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 464
    return-object p0

    .line 460
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    goto :goto_1f
.end method

.method public mergeBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 391
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 393
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 399
    :goto_1f
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 400
    return-object p0

    .line 396
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 291
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->getDefaultInstance()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 301
    :cond_6
    :goto_6
    return-object p0

    .line 292
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->hasBoundingBox()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 293
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    .line 295
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->hasScore()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 296
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->getScore()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->setScore(F)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    .line 298
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->hasBarcode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->getBarcode()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeBarcode(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 326
    sparse-switch v0, :sswitch_data_54

    .line 331
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    :sswitch_d
    return-object p0

    .line 338
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->hasBoundingBox()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 340
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 342
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 343
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->setBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    goto :goto_0

    .line 347
    :sswitch_2a
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 348
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->score_:F

    goto :goto_0

    .line 352
    :sswitch_37
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->hasBarcode()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 354
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->getBarcode()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    .line 356
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 357
    invoke-virtual {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->setBarcode(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    goto :goto_0

    .line 326
    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x15 -> :sswitch_2a
        0x52 -> :sswitch_37
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
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 218
    check-cast p1, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom(Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

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
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBarcode(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 449
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->build()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    .line 451
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 452
    return-object p0
.end method

.method public setBarcode(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 439
    if-nez p1, :cond_8

    .line 440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 442
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->barcode_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    .line 444
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 445
    return-object p0
.end method

.method public setBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 385
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 387
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 388
    return-object p0
.end method

.method public setBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 375
    if-nez p1, :cond_8

    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 378
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 380
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 381
    return-object p0
.end method

.method public setScore(F)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 418
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->bitField0_:I

    .line 419
    iput p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->score_:F

    .line 421
    return-object p0
.end method
