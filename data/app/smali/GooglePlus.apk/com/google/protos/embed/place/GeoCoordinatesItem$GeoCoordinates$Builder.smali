.class public final Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GeoCoordinatesItem.java"

# interfaces
.implements Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinatesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;",
        "Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;",
        ">;",
        "Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinatesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private imageUrl_:Ljava/lang/Object;

.field private latitude_:D

.field private longitude_:D

.field private name_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 516
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->imageUrl_:Ljava/lang/Object;

    .line 552
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->name_:Ljava/lang/Object;

    .line 588
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->url_:Ljava/lang/Object;

    .line 323
    invoke-direct {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->maybeForceBuilderInitialization()V

    .line 324
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 1

    .prologue
    .line 317
    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->create()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 1

    .prologue
    .line 329
    new-instance v0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    invoke-direct {v0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 327
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->build()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    .registers 3

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->buildPartial()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    .line 357
    .local v0, result:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    invoke-virtual {v0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 358
    invoke-static {v0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 360
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->buildPartial()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    .registers 6

    .prologue
    .line 374
    new-instance v1, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;-><init>(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;Lcom/google/protos/embed/place/GeoCoordinatesItem$1;)V

    .line 375
    .local v1, result:Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 376
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 377
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 378
    or-int/lit8 v2, v2, 0x1

    .line 380
    :cond_10
    iget-wide v3, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->latitude_:D

    #setter for: Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->latitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->access$302(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;D)D

    .line 381
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 382
    or-int/lit8 v2, v2, 0x2

    .line 384
    :cond_1c
    iget-wide v3, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->longitude_:D

    #setter for: Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->longitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->access$402(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;D)D

    .line 385
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 386
    or-int/lit8 v2, v2, 0x4

    .line 388
    :cond_28
    iget-object v3, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->imageUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->imageUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->access$502(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 390
    or-int/lit8 v2, v2, 0x8

    .line 392
    :cond_35
    iget-object v3, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->access$602(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 394
    or-int/lit8 v2, v2, 0x10

    .line 396
    :cond_42
    iget-object v3, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->access$702(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    #setter for: Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->access$802(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;I)I

    .line 398
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->clear()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->clear()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 333
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 334
    iput-wide v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->latitude_:D

    .line 335
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 336
    iput-wide v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->longitude_:D

    .line 337
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 338
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->imageUrl_:Ljava/lang/Object;

    .line 339
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->name_:Ljava/lang/Object;

    .line 341
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->url_:Ljava/lang/Object;

    .line 343
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 344
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->clone()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->clone()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 3

    .prologue
    .line 348
    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->create()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->buildPartial()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->mergeFrom(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

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
    .line 317
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->clone()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->getDefaultInstanceForType()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->getDefaultInstanceForType()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;
    .registers 2

    .prologue
    .line 352
    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getDefaultInstance()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 422
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
    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 317
    check-cast p1, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->mergeFrom(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

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
    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 431
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_50

    .line 436
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    :sswitch_d
    return-object p0

    .line 443
    :sswitch_e
    iget v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 444
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->latitude_:D

    goto :goto_0

    .line 448
    :sswitch_1b
    iget v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 449
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->longitude_:D

    goto :goto_0

    .line 453
    :sswitch_28
    iget v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 454
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->imageUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 458
    :sswitch_35
    iget v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 459
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 463
    :sswitch_42
    iget v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 464
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 431
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_d
        0x9 -> :sswitch_e
        0x11 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_42
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 402
    invoke-static {}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getDefaultInstance()Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 418
    :cond_6
    :goto_6
    return-object p0

    .line 403
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 404
    invoke-virtual {p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->setLatitude(D)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    .line 406
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 407
    invoke-virtual {p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->setLongitude(D)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    .line 409
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 410
    invoke-virtual {p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    .line 412
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 413
    invoke-virtual {p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    .line 415
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 416
    invoke-virtual {p1}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->setUrl(Ljava/lang/String;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;

    goto :goto_6
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 531
    if-nez p1, :cond_8

    .line 532
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 534
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 535
    iput-object p1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->imageUrl_:Ljava/lang/Object;

    .line 537
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 482
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 483
    iput-wide p1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->latitude_:D

    .line 485
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 503
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 504
    iput-wide p1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->longitude_:D

    .line 506
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 567
    if-nez p1, :cond_8

    .line 568
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 570
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 571
    iput-object p1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->name_:Ljava/lang/Object;

    .line 573
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 603
    if-nez p1, :cond_8

    .line 604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 606
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->bitField0_:I

    .line 607
    iput-object p1, p0, Lcom/google/protos/embed/place/GeoCoordinatesItem$GeoCoordinates$Builder;->url_:Ljava/lang/Object;

    .line 609
    return-object p0
.end method
