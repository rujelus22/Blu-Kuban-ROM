.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxErrorOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private text_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32468
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 32582
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    .line 32469
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->maybeForceBuilderInitialization()V

    .line 32470
    return-void
.end method

.method static synthetic access$44000()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 1

    .prologue
    .line 32463
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 1

    .prologue
    .line 32475
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 32473
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 3

    .prologue
    .line 32496
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    .line 32497
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 32498
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 32500
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 6

    .prologue
    .line 32514
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 32515
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 32516
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 32517
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 32518
    or-int/lit8 v2, v2, 0x1

    .line 32520
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->access$44202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32521
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 32522
    or-int/lit8 v2, v2, 0x2

    .line 32524
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->access$44302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32525
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->access$44402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;I)I

    .line 32526
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 2

    .prologue
    .line 32479
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 32480
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32481
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 32482
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    .line 32483
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 32484
    return-object p0
.end method

.method public clearText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 2

    .prologue
    .line 32630
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 32631
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    .line 32633
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 2

    .prologue
    .line 32599
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 32600
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32602
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 32463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 3

    .prologue
    .line 32488
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

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
    .line 32463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 32463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32463
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 2

    .prologue
    .line 32492
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 32611
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    .line 32612
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 32613
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32614
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    .line 32617
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    .registers 2

    .prologue
    .line 32587
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    return-object v0
.end method

.method public hasText()Z
    .registers 3

    .prologue
    .line 32608
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

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

    .line 32584
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 32463
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

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
    .line 32463
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32549
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 32550
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 32555
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32557
    :sswitch_d
    return-object p0

    .line 32562
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 32563
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    move-result-object v2

    .line 32564
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    if-eqz v2, :cond_0

    .line 32565
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 32566
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_0

    .line 32571
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 32572
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 32550
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 32530
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 32537
    :cond_6
    :goto_6
    return-object p0

    .line 32531
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 32532
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    .line 32534
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->hasText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32535
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    goto :goto_6
.end method

.method public setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32621
    if-nez p1, :cond_8

    .line 32622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32624
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 32625
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    .line 32627
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32590
    if-nez p1, :cond_8

    .line 32591
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32593
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 32594
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32596
    return-object p0
.end method
