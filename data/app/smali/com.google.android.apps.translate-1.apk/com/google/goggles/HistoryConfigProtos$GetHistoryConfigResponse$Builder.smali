.class public final Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HistoryConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;",
        "Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;",
        ">;",
        "Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 795
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 688
    invoke-direct {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->maybeForceBuilderInitialization()V

    .line 689
    return-void
.end method

.method static synthetic access$800(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 1

    .prologue
    .line 682
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 724
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 727
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 1

    .prologue
    .line 694
    new-instance v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    invoke-direct {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 692
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 3

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 715
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 717
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->build()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 731
    new-instance v2, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;-><init>(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;Lcom/google/goggles/HistoryConfigProtos$1;)V

    .line 732
    iget v3, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

    .line 733
    const/4 v1, 0x0

    .line 734
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_17

    .line 737
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    #setter for: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    invoke-static {v2, v1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->access$1102(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 738
    #setter for: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->access$1202(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;I)I

    .line 739
    return-object v2

    :cond_17
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 2

    .prologue
    .line 698
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 699
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 700
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

    .line 701
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->clear()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->clear()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 2

    .prologue
    .line 831
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 833
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

    .line 834
    return-object p0
.end method

.method public clone()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 3

    .prologue
    .line 705
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

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
    .line 682
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;
    .registers 2

    .prologue
    .line 709
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    return-object v0
.end method

.method public hasHistoryConfig()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 797
    iget v1, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

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

    .line 751
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->hasHistoryConfig()Z

    move-result v1

    if-nez v1, :cond_8

    .line 759
    :cond_7
    :goto_7
    return v0

    .line 755
    :cond_8
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->getHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 759
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 743
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 747
    :cond_6
    :goto_6
    return-object p0

    .line 744
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->hasHistoryConfig()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 745
    invoke-virtual {p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;->getHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeHistoryConfig(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 768
    sparse-switch v0, :sswitch_data_2a

    .line 773
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    :sswitch_d
    return-object p0

    .line 780
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    .line 781
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->hasHistoryConfig()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 782
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->getHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    .line 784
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 785
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->setHistoryConfig(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    goto :goto_0

    .line 768
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 682
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 682
    check-cast p1, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;

    invoke-virtual {p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

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
    .line 682
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeHistoryConfig(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 4
    .parameter

    .prologue
    .line 819
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 821
    iget-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 827
    :goto_1f
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

    .line 828
    return-object p0

    .line 824
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    goto :goto_1f
.end method

.method public setHistoryConfig(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 813
    invoke-virtual {p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->build()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 815
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

    .line 816
    return-object p0
.end method

.method public setHistoryConfig(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;
    .registers 3
    .parameter

    .prologue
    .line 803
    if-nez p1, :cond_8

    .line 804
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 806
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 808
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigResponse$Builder;->bitField0_:I

    .line 809
    return-object p0
.end method
