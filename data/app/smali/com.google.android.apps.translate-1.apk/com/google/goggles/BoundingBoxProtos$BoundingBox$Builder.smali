.class public final Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BoundingBoxProtos.java"

# interfaces
.implements Lcom/google/goggles/BoundingBoxProtos$BoundingBoxOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/BoundingBoxProtos$BoundingBox;",
        "Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;",
        ">;",
        "Lcom/google/goggles/BoundingBoxProtos$BoundingBoxOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private height_:I

.field private width_:I

.field private x_:I

.field private y_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 250
    invoke-direct {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->maybeForceBuilderInitialization()V

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildParsed()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 1

    .prologue
    .line 244
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->create()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 292
    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 295
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 1

    .prologue
    .line 256
    new-instance v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    invoke-direct {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 254
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 283
    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 285
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 299
    new-instance v2, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;-><init>(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;Lcom/google/goggles/BoundingBoxProtos$1;)V

    .line 300
    iget v3, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 301
    const/4 v1, 0x0

    .line 302
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3c

    .line 305
    :goto_e
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->x_:I

    #setter for: Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->x_:I
    invoke-static {v2, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->access$302(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;I)I

    .line 306
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 307
    or-int/lit8 v0, v0, 0x2

    .line 309
    :cond_1a
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->width_:I

    #setter for: Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->width_:I
    invoke-static {v2, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->access$402(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;I)I

    .line 310
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 311
    or-int/lit8 v0, v0, 0x4

    .line 313
    :cond_26
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->y_:I

    #setter for: Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->y_:I
    invoke-static {v2, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->access$502(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;I)I

    .line 314
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_33

    .line 315
    or-int/lit8 v0, v0, 0x8

    .line 317
    :cond_33
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->height_:I

    #setter for: Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->height_:I
    invoke-static {v2, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->access$602(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;I)I

    .line 318
    #setter for: Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->access$702(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;I)I

    .line 319
    return-object v2

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 261
    iput v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->x_:I

    .line 262
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 263
    iput v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->width_:I

    .line 264
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 265
    iput v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->y_:I

    .line 266
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 267
    iput v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->height_:I

    .line 268
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 269
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->clear()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->clear()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHeight()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 2

    .prologue
    .line 480
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 481
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->height_:I

    .line 483
    return-object p0
.end method

.method public clearWidth()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 2

    .prologue
    .line 438
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->width_:I

    .line 441
    return-object p0
.end method

.method public clearX()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 2

    .prologue
    .line 417
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->x_:I

    .line 420
    return-object p0
.end method

.method public clearY()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 2

    .prologue
    .line 459
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 460
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->y_:I

    .line 462
    return-object p0
.end method

.method public clone()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 3

    .prologue
    .line 273
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->create()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->clone()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->clone()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->clone()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

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
    .line 244
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->clone()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 277
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->getDefaultInstanceForType()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->getDefaultInstanceForType()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 471
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->height_:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 429
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->width_:I

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 408
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->x_:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 450
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->y_:I

    return v0
.end method

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 468
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

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

.method public hasWidth()Z
    .registers 3

    .prologue
    .line 426
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

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

.method public hasX()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 405
    iget v1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasY()Z
    .registers 3

    .prologue
    .line 447
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->hasX()Z

    move-result v1

    if-nez v1, :cond_8

    .line 356
    :cond_7
    :goto_7
    return v0

    .line 344
    :cond_8
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->hasWidth()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 348
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->hasY()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 352
    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->hasHeight()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 356
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 3
    .parameter

    .prologue
    .line 323
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 336
    :cond_6
    :goto_6
    return-object p0

    .line 324
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->hasX()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 325
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setX(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 327
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 328
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setWidth(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 330
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->hasY()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 331
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setY(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 333
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 334
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setHeight(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 365
    sparse-switch v0, :sswitch_data_42

    .line 370
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    :sswitch_d
    return-object p0

    .line 377
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 378
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->x_:I

    goto :goto_0

    .line 382
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 383
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->width_:I

    goto :goto_0

    .line 387
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 388
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->y_:I

    goto :goto_0

    .line 392
    :sswitch_35
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 393
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->height_:I

    goto :goto_0

    .line 365
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
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
    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 244
    check-cast p1, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-virtual {p0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

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
    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHeight(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 3
    .parameter

    .prologue
    .line 474
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 475
    iput p1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->height_:I

    .line 477
    return-object p0
.end method

.method public setWidth(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 3
    .parameter

    .prologue
    .line 432
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 433
    iput p1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->width_:I

    .line 435
    return-object p0
.end method

.method public setX(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 3
    .parameter

    .prologue
    .line 411
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 412
    iput p1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->x_:I

    .line 414
    return-object p0
.end method

.method public setY(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .registers 3
    .parameter

    .prologue
    .line 453
    iget v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->bitField0_:I

    .line 454
    iput p1, p0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->y_:I

    .line 456
    return-object p0
.end method
