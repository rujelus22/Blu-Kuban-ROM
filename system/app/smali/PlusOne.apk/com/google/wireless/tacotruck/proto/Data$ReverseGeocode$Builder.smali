.class public final Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;",
        "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocodeOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22592
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    .line 22742
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 22593
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->maybeForceBuilderInitialization()V

    .line 22594
    return-void
.end method

.method static synthetic access$30500()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 1

    .prologue
    .line 22587
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 1

    .prologue
    .line 22599
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22597
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 3

    .prologue
    .line 22620
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    .line 22621
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 22622
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22624
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22587
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 6

    .prologue
    .line 22638
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 22639
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 22640
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 22641
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 22642
    or-int/lit8 v2, v2, 0x1

    .line 22644
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->address_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->access$30702(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22645
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 22646
    or-int/lit8 v2, v2, 0x2

    .line 22648
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->access$30802(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 22649
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->access$30902(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;I)I

    .line 22650
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22587
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22587
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 2

    .prologue
    .line 22603
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    .line 22605
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 22606
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 22607
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 22608
    return-object p0
.end method

.method public clearAddress()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 2

    .prologue
    .line 22730
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 22731
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    .line 22733
    return-object p0
.end method

.method public clearGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 2

    .prologue
    .line 22759
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 22760
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 22762
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22587
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22587
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 3

    .prologue
    .line 22612
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

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
    .line 22587
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22711
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    .line 22712
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 22713
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22714
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    .line 22717
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 22587
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22587
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    .registers 2

    .prologue
    .line 22616
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    return-object v0
.end method

.method public getGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
    .registers 2

    .prologue
    .line 22747
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    return-object v0
.end method

.method public hasAddress()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22708
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasGranularity()Z
    .registers 3

    .prologue
    .line 22744
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

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
    .line 22587
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

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
    .line 22587
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22673
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 22674
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 22679
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 22681
    :sswitch_d
    return-object p0

    .line 22686
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 22687
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 22691
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 22692
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    move-result-object v2

    .line 22693
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
    if-eqz v2, :cond_0

    .line 22694
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 22695
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    goto :goto_0

    .line 22674
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 22654
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22661
    :cond_6
    :goto_6
    return-object p0

    .line 22655
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22656
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->setAddress(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    .line 22658
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->hasGranularity()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22659
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->setGranularity(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    goto :goto_6
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22721
    if-nez p1, :cond_8

    .line 22722
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22724
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 22725
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->address_:Ljava/lang/Object;

    .line 22727
    return-object p0
.end method

.method public setGranularity(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22750
    if-nez p1, :cond_8

    .line 22751
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22753
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->bitField0_:I

    .line 22754
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->granularity_:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 22756
    return-object p0
.end method
