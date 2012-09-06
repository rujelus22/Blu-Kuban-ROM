.class public final Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BoundingBoxP.java"

# interfaces
.implements Lcom/google/protos/aksara/BoundingBoxP$BoundingBoxOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;",
        "Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;",
        ">;",
        "Lcom/google/protos/aksara/BoundingBoxP$BoundingBoxOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private height_:I

.field private left_:I

.field private top_:I

.field private width_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 286
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 390
    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->left_:I

    .line 411
    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->top_:I

    .line 432
    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->width_:I

    .line 453
    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->height_:I

    .line 287
    invoke-direct {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->maybeForceBuilderInitialization()V

    .line 288
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 1

    .prologue
    .line 281
    invoke-static {}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->create()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 1

    .prologue
    .line 293
    new-instance v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    invoke-direct {v0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 291
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->build()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->buildPartial()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    .line 319
    .local v0, result:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    invoke-virtual {v0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 320
    invoke-static {v0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 322
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->buildPartial()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 6

    .prologue
    .line 326
    new-instance v1, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/aksara/BoundingBoxP$1;)V

    .line 327
    .local v1, result:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 328
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 329
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 330
    or-int/lit8 v2, v2, 0x1

    .line 332
    :cond_10
    iget v3, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->left_:I

    #setter for: Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->left_:I
    invoke-static {v1, v3}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->access$302(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;I)I

    .line 333
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 334
    or-int/lit8 v2, v2, 0x2

    .line 336
    :cond_1c
    iget v3, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->top_:I

    #setter for: Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->top_:I
    invoke-static {v1, v3}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->access$402(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;I)I

    .line 337
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 338
    or-int/lit8 v2, v2, 0x4

    .line 340
    :cond_28
    iget v3, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->width_:I

    #setter for: Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->width_:I
    invoke-static {v1, v3}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->access$502(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;I)I

    .line 341
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 342
    or-int/lit8 v2, v2, 0x8

    .line 344
    :cond_35
    iget v3, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->height_:I

    #setter for: Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->height_:I
    invoke-static {v1, v3}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->access$602(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;I)I

    .line 345
    #setter for: Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->access$702(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;I)I

    .line 346
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->clear()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->clear()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 297
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 298
    iput v1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->left_:I

    .line 299
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 300
    iput v1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->top_:I

    .line 301
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 302
    iput v1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->width_:I

    .line 303
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 304
    iput v1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->height_:I

    .line 305
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 306
    return-object p0
.end method

.method public clearHeight()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 2

    .prologue
    .line 467
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 468
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->height_:I

    .line 470
    return-object p0
.end method

.method public clearLeft()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 2

    .prologue
    .line 404
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 405
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->left_:I

    .line 407
    return-object p0
.end method

.method public clearTop()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 2

    .prologue
    .line 425
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 426
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->top_:I

    .line 428
    return-object p0
.end method

.method public clearWidth()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 2

    .prologue
    .line 446
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 447
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->width_:I

    .line 449
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->clone()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->clone()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->clone()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 3

    .prologue
    .line 310
    invoke-static {}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->create()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->buildPartial()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->mergeFrom(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

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
    .line 281
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->clone()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    .registers 2

    .prologue
    .line 314
    invoke-static {}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getDefaultInstance()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 458
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->height_:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    .prologue
    .line 395
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->left_:I

    return v0
.end method

.method public getTop()I
    .registers 2

    .prologue
    .line 416
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->top_:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 437
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 455
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

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

.method public hasLeft()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 392
    iget v1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTop()Z
    .registers 3

    .prologue
    .line 413
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

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

.method public hasWidth()Z
    .registers 3

    .prologue
    .line 434
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

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
    .line 367
    const/4 v0, 0x1

    return v0
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
    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 281
    check-cast p1, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->mergeFrom(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

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
    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v2, 0x0

    .line 376
    .local v2, parsedMessage:Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;
    :try_start_1
    sget-object v3, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 381
    if-eqz v2, :cond_10

    .line 382
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->mergeFrom(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    .line 385
    :cond_10
    return-object p0

    .line 377
    :catch_11
    move-exception v1

    .line 378
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-object v2, v0

    .line 379
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 381
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 382
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->mergeFrom(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 350
    invoke-static {}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getDefaultInstance()Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 363
    :cond_6
    :goto_6
    return-object p0

    .line 351
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->hasLeft()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 352
    invoke-virtual {p1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getLeft()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->setLeft(I)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    .line 354
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->hasTop()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 355
    invoke-virtual {p1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getTop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->setTop(I)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    .line 357
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 358
    invoke-virtual {p1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->setWidth(I)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    .line 360
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 361
    invoke-virtual {p1}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->setHeight(I)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;

    goto :goto_6
.end method

.method public setHeight(I)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 461
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 462
    iput p1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->height_:I

    .line 464
    return-object p0
.end method

.method public setLeft(I)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 398
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 399
    iput p1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->left_:I

    .line 401
    return-object p0
.end method

.method public setTop(I)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 419
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 420
    iput p1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->top_:I

    .line 422
    return-object p0
.end method

.method public setWidth(I)Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 440
    iget v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->bitField0_:I

    .line 441
    iput p1, p0, Lcom/google/protos/aksara/BoundingBoxP$BoundingBox$Builder;->width_:I

    .line 443
    return-object p0
.end method
