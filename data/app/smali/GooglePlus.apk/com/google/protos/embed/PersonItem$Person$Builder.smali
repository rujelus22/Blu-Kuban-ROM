.class public final Lcom/google/protos/embed/PersonItem$Person$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PersonItem.java"

# interfaces
.implements Lcom/google/protos/embed/PersonItem$PersonOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embed/PersonItem$Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embed/PersonItem$Person;",
        "Lcom/google/protos/embed/PersonItem$Person$Builder;",
        ">;",
        "Lcom/google/protos/embed/PersonItem$PersonOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private email_:Ljava/lang/Object;

.field private gender_:Ljava/lang/Object;

.field private imageUrl_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private ownerObfuscatedId_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->name_:Ljava/lang/Object;

    .line 612
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->imageUrl_:Ljava/lang/Object;

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->url_:Ljava/lang/Object;

    .line 720
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->gender_:Ljava/lang/Object;

    .line 756
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->email_:Ljava/lang/Object;

    .line 411
    invoke-direct {p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->maybeForceBuilderInitialization()V

    .line 412
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 1

    .prologue
    .line 405
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person$Builder;->create()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 1

    .prologue
    .line 417
    new-instance v0, Lcom/google/protos/embed/PersonItem$Person$Builder;

    invoke-direct {v0}, Lcom/google/protos/embed/PersonItem$Person$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 415
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->build()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embed/PersonItem$Person;
    .registers 3

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->buildPartial()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    .line 447
    .local v0, result:Lcom/google/protos/embed/PersonItem$Person;
    invoke-virtual {v0}, Lcom/google/protos/embed/PersonItem$Person;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 448
    invoke-static {v0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 450
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->buildPartial()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embed/PersonItem$Person;
    .registers 6

    .prologue
    .line 464
    new-instance v1, Lcom/google/protos/embed/PersonItem$Person;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embed/PersonItem$Person;-><init>(Lcom/google/protos/embed/PersonItem$Person$Builder;Lcom/google/protos/embed/PersonItem$1;)V

    .line 465
    .local v1, result:Lcom/google/protos/embed/PersonItem$Person;
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 466
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 467
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 468
    or-int/lit8 v2, v2, 0x1

    .line 470
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/PersonItem$Person;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/PersonItem$Person;->access$302(Lcom/google/protos/embed/PersonItem$Person;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 472
    or-int/lit8 v2, v2, 0x2

    .line 474
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/PersonItem$Person;->ownerObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/PersonItem$Person;->access$402(Lcom/google/protos/embed/PersonItem$Person;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 476
    or-int/lit8 v2, v2, 0x4

    .line 478
    :cond_28
    iget-object v3, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->imageUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/PersonItem$Person;->imageUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/PersonItem$Person;->access$502(Lcom/google/protos/embed/PersonItem$Person;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 480
    or-int/lit8 v2, v2, 0x8

    .line 482
    :cond_35
    iget-object v3, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/PersonItem$Person;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/PersonItem$Person;->access$602(Lcom/google/protos/embed/PersonItem$Person;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 484
    or-int/lit8 v2, v2, 0x10

    .line 486
    :cond_42
    iget-object v3, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->gender_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/PersonItem$Person;->gender_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/PersonItem$Person;->access$702(Lcom/google/protos/embed/PersonItem$Person;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 488
    or-int/lit8 v2, v2, 0x20

    .line 490
    :cond_4f
    iget-object v3, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->email_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embed/PersonItem$Person;->email_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embed/PersonItem$Person;->access$802(Lcom/google/protos/embed/PersonItem$Person;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    #setter for: Lcom/google/protos/embed/PersonItem$Person;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embed/PersonItem$Person;->access$902(Lcom/google/protos/embed/PersonItem$Person;I)I

    .line 492
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->clear()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->clear()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 2

    .prologue
    .line 421
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 422
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->name_:Ljava/lang/Object;

    .line 423
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 424
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 425
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 426
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->imageUrl_:Ljava/lang/Object;

    .line 427
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 428
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->url_:Ljava/lang/Object;

    .line 429
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->gender_:Ljava/lang/Object;

    .line 431
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 432
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->email_:Ljava/lang/Object;

    .line 433
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 434
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->clone()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->clone()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 3

    .prologue
    .line 438
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person$Builder;->create()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->buildPartial()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embed/PersonItem$Person$Builder;->mergeFrom(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

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
    .line 405
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->clone()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->getDefaultInstanceForType()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->getDefaultInstanceForType()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embed/PersonItem$Person;
    .registers 2

    .prologue
    .line 442
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 519
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
    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embed/PersonItem$Person$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 405
    check-cast p1, Lcom/google/protos/embed/PersonItem$Person;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embed/PersonItem$Person$Builder;->mergeFrom(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

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
    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embed/PersonItem$Person$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 528
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5c

    .line 533
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    :sswitch_d
    return-object p0

    .line 540
    :sswitch_e
    iget v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 541
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 545
    :sswitch_1b
    iget v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 546
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    goto :goto_0

    .line 550
    :sswitch_28
    iget v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 551
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->imageUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 555
    :sswitch_35
    iget v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 556
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 560
    :sswitch_42
    iget v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 561
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->gender_:Ljava/lang/Object;

    goto :goto_0

    .line 565
    :sswitch_4f
    iget v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 566
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->email_:Ljava/lang/Object;

    goto :goto_0

    .line 528
    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_4f
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 496
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 515
    :cond_6
    :goto_6
    return-object p0

    .line 497
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embed/PersonItem$Person;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 498
    invoke-virtual {p1}, Lcom/google/protos/embed/PersonItem$Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    .line 500
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embed/PersonItem$Person;->hasOwnerObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 501
    invoke-virtual {p1}, Lcom/google/protos/embed/PersonItem$Person;->getOwnerObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->setOwnerObfuscatedId(Ljava/lang/String;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    .line 503
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embed/PersonItem$Person;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 504
    invoke-virtual {p1}, Lcom/google/protos/embed/PersonItem$Person;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    .line 506
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/embed/PersonItem$Person;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 507
    invoke-virtual {p1}, Lcom/google/protos/embed/PersonItem$Person;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->setUrl(Ljava/lang/String;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    .line 509
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/embed/PersonItem$Person;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 510
    invoke-virtual {p1}, Lcom/google/protos/embed/PersonItem$Person;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->setGender(Ljava/lang/String;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    .line 512
    :cond_48
    invoke-virtual {p1}, Lcom/google/protos/embed/PersonItem$Person;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 513
    invoke-virtual {p1}, Lcom/google/protos/embed/PersonItem$Person;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    goto :goto_6
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 771
    if-nez p1, :cond_8

    .line 772
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 774
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 775
    iput-object p1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->email_:Ljava/lang/Object;

    .line 777
    return-object p0
.end method

.method public setGender(Ljava/lang/String;)Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 735
    if-nez p1, :cond_8

    .line 736
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 738
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 739
    iput-object p1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->gender_:Ljava/lang/Object;

    .line 741
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 663
    if-nez p1, :cond_8

    .line 664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 666
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 667
    iput-object p1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->imageUrl_:Ljava/lang/Object;

    .line 669
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 591
    if-nez p1, :cond_8

    .line 592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 594
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 595
    iput-object p1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->name_:Ljava/lang/Object;

    .line 597
    return-object p0
.end method

.method public setOwnerObfuscatedId(Ljava/lang/String;)Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 627
    if-nez p1, :cond_8

    .line 628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 630
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 631
    iput-object p1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 633
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/embed/PersonItem$Person$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 699
    if-nez p1, :cond_8

    .line 700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 702
    :cond_8
    iget v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->bitField0_:I

    .line 703
    iput-object p1, p0, Lcom/google/protos/embed/PersonItem$Person$Builder;->url_:Ljava/lang/Object;

    .line 705
    return-object p0
.end method
