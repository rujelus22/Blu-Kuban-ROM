.class public final Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$CropRegionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos$CropRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/GogglesProtos$CropRegion;",
        "Lcom/google/goggles/GogglesProtos$CropRegion$Builder;",
        ">;",
        "Lcom/google/goggles/GogglesProtos$CropRegionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private height_:I

.field private region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private width_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 414
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 229
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->maybeForceBuilderInitialization()V

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 1

    .prologue
    .line 223
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->create()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$CropRegion;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 269
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 272
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 1

    .prologue
    .line 235
    new-instance v0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 233
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$CropRegion;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 260
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 262
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->build()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 276
    new-instance v2, Lcom/google/goggles/GogglesProtos$CropRegion;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/GogglesProtos$CropRegion;-><init>(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;Lcom/google/goggles/GogglesProtos$1;)V

    .line 277
    iget v3, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 278
    const/4 v1, 0x0

    .line 279
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2f

    .line 282
    :goto_e
    iget v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->width_:I

    #setter for: Lcom/google/goggles/GogglesProtos$CropRegion;->width_:I
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$CropRegion;->access$302(Lcom/google/goggles/GogglesProtos$CropRegion;I)I

    .line 283
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 284
    or-int/lit8 v0, v0, 0x2

    .line 286
    :cond_1a
    iget v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->height_:I

    #setter for: Lcom/google/goggles/GogglesProtos$CropRegion;->height_:I
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$CropRegion;->access$402(Lcom/google/goggles/GogglesProtos$CropRegion;I)I

    .line 287
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_26

    .line 288
    or-int/lit8 v0, v0, 0x4

    .line 290
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    #setter for: Lcom/google/goggles/GogglesProtos$CropRegion;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$CropRegion;->access$502(Lcom/google/goggles/GogglesProtos$CropRegion;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 291
    #setter for: Lcom/google/goggles/GogglesProtos$CropRegion;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/GogglesProtos$CropRegion;->access$602(Lcom/google/goggles/GogglesProtos$CropRegion;I)I

    .line 292
    return-object v2

    :cond_2f
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 240
    iput v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->width_:I

    .line 241
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 242
    iput v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->height_:I

    .line 243
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 244
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 245
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 246
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->clear()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->clear()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHeight()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 2

    .prologue
    .line 407
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->height_:I

    .line 410
    return-object p0
.end method

.method public clearRegion()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 2

    .prologue
    .line 450
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 452
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 453
    return-object p0
.end method

.method public clearWidth()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 2

    .prologue
    .line 386
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->width_:I

    .line 389
    return-object p0
.end method

.method public clone()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 3

    .prologue
    .line 250
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->create()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->clone()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->clone()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->clone()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

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
    .line 223
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->clone()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 2

    .prologue
    .line 254
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 398
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->height_:I

    return v0
.end method

.method public getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 377
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 395
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

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

.method public hasRegion()Z
    .registers 3

    .prologue
    .line 416
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

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

.method public hasWidth()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 374
    iget v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

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

    .line 310
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->hasWidth()Z

    move-result v1

    if-nez v1, :cond_8

    .line 326
    :cond_7
    :goto_7
    return v0

    .line 314
    :cond_8
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->hasHeight()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 318
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->hasRegion()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 322
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 326
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 3
    .parameter

    .prologue
    .line 296
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 306
    :cond_6
    :goto_6
    return-object p0

    .line 297
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$CropRegion;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 298
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$CropRegion;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->setWidth(I)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    .line 300
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$CropRegion;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 301
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$CropRegion;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->setHeight(I)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    .line 303
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$CropRegion;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$CropRegion;->getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeRegion(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 335
    sparse-switch v0, :sswitch_data_44

    .line 340
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    :sswitch_d
    return-object p0

    .line 347
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 348
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->width_:I

    goto :goto_0

    .line 352
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 353
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->height_:I

    goto :goto_0

    .line 357
    :sswitch_28
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->hasRegion()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 359
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 361
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 362
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->setRegion(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    goto :goto_0

    .line 335
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
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
    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 223
    check-cast p1, Lcom/google/goggles/GogglesProtos$CropRegion;

    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

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
    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeRegion(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 4
    .parameter

    .prologue
    .line 438
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 440
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 446
    :goto_1f
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 447
    return-object p0

    .line 443
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    goto :goto_1f
.end method

.method public setHeight(I)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 3
    .parameter

    .prologue
    .line 401
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 402
    iput p1, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->height_:I

    .line 404
    return-object p0
.end method

.method public setRegion(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 3
    .parameter

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 434
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 435
    return-object p0
.end method

.method public setRegion(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 3
    .parameter

    .prologue
    .line 422
    if-nez p1, :cond_8

    .line 423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 425
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 427
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 428
    return-object p0
.end method

.method public setWidth(I)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 3
    .parameter

    .prologue
    .line 380
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->bitField0_:I

    .line 381
    iput p1, p0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->width_:I

    .line 383
    return-object p0
.end method
