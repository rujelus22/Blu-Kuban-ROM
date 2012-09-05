.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextFieldOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

.field private text_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29456
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 29570
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->text_:Ljava/lang/Object;

    .line 29606
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->CENTER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    .line 29457
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->maybeForceBuilderInitialization()V

    .line 29458
    return-void
.end method

.method static synthetic access$40000()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 1

    .prologue
    .line 29451
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 1

    .prologue
    .line 29463
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 29461
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 3

    .prologue
    .line 29484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    .line 29485
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 29486
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 29488
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 6

    .prologue
    .line 29502
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 29503
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    .line 29504
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 29505
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 29506
    or-int/lit8 v2, v2, 0x1

    .line 29508
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->access$40202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29509
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 29510
    or-int/lit8 v2, v2, 0x2

    .line 29512
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->access$40302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    .line 29513
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->access$40402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;I)I

    .line 29514
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 2

    .prologue
    .line 29467
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 29468
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->text_:Ljava/lang/Object;

    .line 29469
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    .line 29470
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->CENTER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    .line 29471
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    .line 29472
    return-object p0
.end method

.method public clearText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 2

    .prologue
    .line 29594
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    .line 29595
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->text_:Ljava/lang/Object;

    .line 29597
    return-object p0
.end method

.method public clearTextAlign()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 2

    .prologue
    .line 29623
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    .line 29624
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->CENTER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    .line 29626
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 29451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 3

    .prologue
    .line 29476
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

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
    .line 29451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 29451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 29480
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 29575
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->text_:Ljava/lang/Object;

    .line 29576
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 29577
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 29578
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->text_:Ljava/lang/Object;

    .line 29581
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

.method public getTextAlign()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;
    .registers 2

    .prologue
    .line 29611
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    return-object v0
.end method

.method public hasText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 29572
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTextAlign()Z
    .registers 3

    .prologue
    .line 29608
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

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
    .line 29451
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

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
    .line 29451
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29537
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 29538
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 29543
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29545
    :sswitch_d
    return-object p0

    .line 29550
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    .line 29551
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 29555
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 29556
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    move-result-object v2

    .line 29557
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;
    if-eqz v2, :cond_0

    .line 29558
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    .line 29559
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    goto :goto_0

    .line 29538
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x20 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 29518
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 29525
    :cond_6
    :goto_6
    return-object p0

    .line 29519
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->hasText()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29520
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    .line 29522
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->hasTextAlign()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29523
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getTextAlign()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->setTextAlign(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    goto :goto_6
.end method

.method public setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29585
    if-nez p1, :cond_8

    .line 29586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29588
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    .line 29589
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->text_:Ljava/lang/Object;

    .line 29591
    return-object p0
.end method

.method public setTextAlign(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29614
    if-nez p1, :cond_8

    .line 29615
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29617
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->bitField0_:I

    .line 29618
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    .line 29620
    return-object p0
.end method
