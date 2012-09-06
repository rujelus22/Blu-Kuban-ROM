.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxActionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayDelayMs_:I

.field private text_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36405
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 36547
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CHANGE_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36571
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    .line 36607
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    .line 36406
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->maybeForceBuilderInitialization()V

    .line 36407
    return-void
.end method

.method static synthetic access$48900()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 1

    .prologue
    .line 36400
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 1

    .prologue
    .line 36412
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 36410
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36400
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 3

    .prologue
    .line 36437
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    .line 36438
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 36439
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 36441
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36400
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 6

    .prologue
    .line 36455
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 36456
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36457
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 36458
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 36459
    or-int/lit8 v2, v2, 0x1

    .line 36461
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->access$49102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36462
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 36463
    or-int/lit8 v2, v2, 0x2

    .line 36465
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->access$49202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36466
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 36467
    or-int/lit8 v2, v2, 0x4

    .line 36469
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->access$49302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36470
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 36471
    or-int/lit8 v2, v2, 0x8

    .line 36473
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->displayDelayMs_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->displayDelayMs_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->access$49402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;I)I

    .line 36474
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->access$49502(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;I)I

    .line 36475
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36400
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36400
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2

    .prologue
    .line 36416
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36417
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CHANGE_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36418
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36419
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    .line 36420
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36421
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    .line 36422
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36423
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->displayDelayMs_:I

    .line 36424
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36425
    return-object p0
.end method

.method public clearDisplayDelayMs()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2

    .prologue
    .line 36657
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36658
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->displayDelayMs_:I

    .line 36660
    return-object p0
.end method

.method public clearText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2

    .prologue
    .line 36595
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36596
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    .line 36598
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2

    .prologue
    .line 36564
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36565
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CHANGE_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36567
    return-object p0
.end method

.method public clearUrl()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 2

    .prologue
    .line 36631
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36632
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    .line 36634
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 36400
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36400
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 3

    .prologue
    .line 36429
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

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
    .line 36400
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 36400
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36400
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2

    .prologue
    .line 36433
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayDelayMs()I
    .registers 2

    .prologue
    .line 36648
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->displayDelayMs_:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 36576
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    .line 36577
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 36578
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36579
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    .line 36582
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    .registers 2

    .prologue
    .line 36552
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 36612
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    .line 36613
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 36614
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36615
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    .line 36618
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public hasDisplayDelayMs()Z
    .registers 3

    .prologue
    .line 36645
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    .line 36573
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 36549
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 36609
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

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
    .line 36496
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
    .line 36400
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 36400
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

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
    .line 36400
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36504
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 36505
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_48

    .line 36510
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 36512
    :sswitch_d
    return-object p0

    .line 36517
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 36518
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v2

    .line 36519
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    if-eqz v2, :cond_0

    .line 36520
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36521
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    goto :goto_0

    .line 36526
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36527
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 36531
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36532
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 36536
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36537
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->displayDelayMs_:I

    goto :goto_0

    .line 36505
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_3b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 36479
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 36492
    :cond_6
    :goto_6
    return-object p0

    .line 36480
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36481
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    .line 36483
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->hasText()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 36484
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    .line 36486
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 36487
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    .line 36489
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->hasDisplayDelayMs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36490
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDisplayDelayMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->setDisplayDelayMs(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    goto :goto_6
.end method

.method public setDisplayDelayMs(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36651
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36652
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->displayDelayMs_:I

    .line 36654
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36586
    if-nez p1, :cond_8

    .line 36587
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36589
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36590
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->text_:Ljava/lang/Object;

    .line 36592
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36555
    if-nez p1, :cond_8

    .line 36556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36558
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36559
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36561
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36622
    if-nez p1, :cond_8

    .line 36623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36625
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->bitField0_:I

    .line 36626
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->url_:Ljava/lang/Object;

    .line 36628
    return-object p0
.end method
