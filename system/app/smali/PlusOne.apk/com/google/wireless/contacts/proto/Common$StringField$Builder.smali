.class public final Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Common.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Common$StringFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Common$StringField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Common$StringField;",
        "Lcom/google/wireless/contacts/proto/Common$StringField$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Common$StringFieldOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 659
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 702
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->value_:Ljava/lang/Object;

    .line 546
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->maybeForceBuilderInitialization()V

    .line 547
    return-void
.end method

.method static synthetic access$600()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 1

    .prologue
    .line 540
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->create()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 1

    .prologue
    .line 552
    new-instance v0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 550
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 3

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    .line 574
    .local v0, result:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 575
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 577
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 6

    .prologue
    .line 591
    new-instance v1, Lcom/google/wireless/contacts/proto/Common$StringField;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Common$StringField;-><init>(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;Lcom/google/wireless/contacts/proto/Common$1;)V

    .line 592
    .local v1, result:Lcom/google/wireless/contacts/proto/Common$StringField;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    .line 593
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 594
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 595
    or-int/lit8 v2, v2, 0x1

    .line 597
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    #setter for: Lcom/google/wireless/contacts/proto/Common$StringField;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Common$StringField;->access$802(Lcom/google/wireless/contacts/proto/Common$StringField;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 598
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 599
    or-int/lit8 v2, v2, 0x2

    .line 601
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Common$StringField;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Common$StringField;->access$902(Lcom/google/wireless/contacts/proto/Common$StringField;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    #setter for: Lcom/google/wireless/contacts/proto/Common$StringField;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Common$StringField;->access$1002(Lcom/google/wireless/contacts/proto/Common$StringField;I)I

    .line 603
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->clear()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->clear()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 2

    .prologue
    .line 556
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 557
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 558
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    .line 559
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->value_:Ljava/lang/Object;

    .line 560
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    .line 561
    return-object p0
.end method

.method public clearMetadata()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 2

    .prologue
    .line 695
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 697
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    .line 698
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 2

    .prologue
    .line 726
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    .line 727
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->value_:Ljava/lang/Object;

    .line 729
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->clone()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->clone()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 3

    .prologue
    .line 565
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->create()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

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
    .line 540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->clone()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 569
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->value_:Ljava/lang/Object;

    .line 708
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 709
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->value_:Ljava/lang/Object;

    .line 713
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

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 661
    iget v1, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    .line 704
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

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
    .line 540
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

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
    .line 540
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 627
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 632
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 634
    :sswitch_d
    return-object p0

    .line 639
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    .line 640
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->hasMetadata()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 641
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    .line 643
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 644
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    goto :goto_0

    .line 648
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    .line 649
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 627
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 607
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 614
    :cond_6
    :goto_6
    return-object p0

    .line 608
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 609
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 611
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 612
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->setValue(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    goto :goto_6
.end method

.method public mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 683
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 685
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 691
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    .line 692
    return-object p0

    .line 688
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    goto :goto_1f
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 677
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->build()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 679
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    .line 680
    return-object p0
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 667
    if-nez p1, :cond_8

    .line 668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 670
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 672
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    .line 673
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 717
    if-nez p1, :cond_8

    .line 718
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 720
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->bitField0_:I

    .line 721
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->value_:Ljava/lang/Object;

    .line 723
    return-object p0
.end method
