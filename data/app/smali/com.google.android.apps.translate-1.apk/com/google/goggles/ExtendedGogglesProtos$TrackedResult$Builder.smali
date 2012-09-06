.class public final Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ExtendedGogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/ExtendedGogglesProtos$TrackedResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;",
        "Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;",
        ">;",
        "Lcom/google/goggles/ExtendedGogglesProtos$TrackedResultOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private resultId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->resultId_:Ljava/lang/Object;

    .line 375
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 220
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->maybeForceBuilderInitialization()V

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 1

    .prologue
    .line 214
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->create()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 258
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 261
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 1

    .prologue
    .line 226
    new-instance v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 224
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 249
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 251
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->build()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 265
    new-instance v2, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;-><init>(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;Lcom/google/goggles/ExtendedGogglesProtos$1;)V

    .line 266
    iget v3, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    .line 267
    const/4 v1, 0x0

    .line 268
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_23

    .line 271
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->resultId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->resultId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->access$302(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 273
    or-int/lit8 v0, v0, 0x2

    .line 275
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v2, v1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->access$402(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 276
    #setter for: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->access$502(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;I)I

    .line 277
    return-object v2

    :cond_23
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->resultId_:Ljava/lang/Object;

    .line 232
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    .line 233
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 234
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    .line 235
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->clear()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->clear()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBoundingBox()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 2

    .prologue
    .line 411
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 413
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    .line 414
    return-object p0
.end method

.method public clearResultId()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 2

    .prologue
    .line 363
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    .line 364
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->getResultId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->resultId_:Ljava/lang/Object;

    .line 366
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 3

    .prologue
    .line 239
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->create()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildPartial()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->clone()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->clone()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->clone()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

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
    .line 214
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->clone()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 2

    .prologue
    .line 243
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public getResultId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->resultId_:Ljava/lang/Object;

    .line 345
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 346
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 347
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->resultId_:Ljava/lang/Object;

    .line 350
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasBoundingBox()Z
    .registers 3

    .prologue
    .line 377
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

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

.method public hasResultId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 341
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

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
    .line 292
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->hasBoundingBox()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 293
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 295
    const/4 v0, 0x0

    .line 298
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 4
    .parameter

    .prologue
    .line 399
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 401
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 407
    :goto_1f
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    .line 408
    return-object p0

    .line 404
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 281
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 288
    :cond_6
    :goto_6
    return-object p0

    .line 282
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->hasResultId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 283
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->getResultId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->setResultId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    .line 285
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->hasBoundingBox()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 286
    invoke-virtual {p1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 307
    sparse-switch v0, :sswitch_data_38

    .line 312
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :sswitch_d
    return-object p0

    .line 319
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    .line 320
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->resultId_:Ljava/lang/Object;

    goto :goto_0

    .line 324
    :sswitch_1b
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    .line 325
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->hasBoundingBox()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 328
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 329
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->setBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    goto :goto_0

    .line 307
    nop

    :sswitch_data_38
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
    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 214
    check-cast p1, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

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
    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 393
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 395
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    .line 396
    return-object p0
.end method

.method public setBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 383
    if-nez p1, :cond_8

    .line 384
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 386
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 388
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    .line 389
    return-object p0
.end method

.method public setResultId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 3
    .parameter

    .prologue
    .line 354
    if-nez p1, :cond_8

    .line 355
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 357
    :cond_8
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    .line 358
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->resultId_:Ljava/lang/Object;

    .line 360
    return-object p0
.end method

.method setResultId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 369
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->bitField0_:I

    .line 370
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->resultId_:Ljava/lang/Object;

    .line 372
    return-void
.end method
