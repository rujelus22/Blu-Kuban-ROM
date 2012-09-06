.class public final Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NetworkInfoProtos.java"

# interfaces
.implements Lcom/google/goggles/NetworkInfoProtos$NetworkInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;",
        "Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;",
        ">;",
        "Lcom/google/goggles/NetworkInfoProtos$NetworkInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

.field private signalStrength_:I

.field private type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 859
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    .line 883
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    .line 728
    invoke-direct {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->maybeForceBuilderInitialization()V

    .line 729
    return-void
.end method

.method static synthetic access$600(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 1

    .prologue
    .line 722
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->create()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 768
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 771
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 1

    .prologue
    .line 734
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    invoke-direct {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 732
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 3

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 759
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 761
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->build()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 775
    new-instance v2, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;-><init>(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;Lcom/google/goggles/NetworkInfoProtos$1;)V

    .line 776
    iget v3, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 777
    const/4 v1, 0x0

    .line 778
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2f

    .line 781
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    #setter for: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;
    invoke-static {v2, v1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->access$902(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    .line 782
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 783
    or-int/lit8 v0, v0, 0x2

    .line 785
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    #setter for: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    invoke-static {v2, v1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->access$1002(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    .line 786
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_26

    .line 787
    or-int/lit8 v0, v0, 0x4

    .line 789
    :cond_26
    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->signalStrength_:I

    #setter for: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->signalStrength_:I
    invoke-static {v2, v1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->access$1102(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;I)I

    .line 790
    #setter for: Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->access$1202(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;I)I

    .line 791
    return-object v2

    :cond_2f
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 2

    .prologue
    .line 738
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 739
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    .line 740
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 741
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    .line 742
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 743
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->signalStrength_:I

    .line 744
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 745
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->clear()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->clear()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMobileNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 2

    .prologue
    .line 919
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    .line 921
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 922
    return-object p0
.end method

.method public clearSignalStrength()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 2

    .prologue
    .line 940
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 941
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->signalStrength_:I

    .line 943
    return-object p0
.end method

.method public clearType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 2

    .prologue
    .line 876
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 877
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    .line 879
    return-object p0
.end method

.method public clone()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 3

    .prologue
    .line 749
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->create()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->clone()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->clone()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->clone()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

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
    .line 722
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->clone()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2

    .prologue
    .line 753
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->getDefaultInstanceForType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMobileNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    return-object v0
.end method

.method public getSignalStrength()I
    .registers 2

    .prologue
    .line 931
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->signalStrength_:I

    return v0
.end method

.method public getType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    return-object v0
.end method

.method public hasMobileNetworkInfo()Z
    .registers 3

    .prologue
    .line 885
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

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

.method public hasSignalStrength()Z
    .registers 3

    .prologue
    .line 928
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 861
    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 809
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 795
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 805
    :cond_6
    :goto_6
    return-object p0

    .line 796
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 797
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->setType(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    .line 799
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->hasMobileNetworkInfo()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 800
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getMobileNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeMobileNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    .line 802
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->hasSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 803
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getSignalStrength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->setSignalStrength(I)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 818
    sparse-switch v0, :sswitch_data_4a

    .line 823
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    :sswitch_d
    return-object p0

    .line 830
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 831
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->valueOf(I)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    move-result-object v0

    .line 832
    if-eqz v0, :cond_0

    .line 833
    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 834
    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    goto :goto_0

    .line 839
    :sswitch_21
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    .line 840
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->hasMobileNetworkInfo()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 841
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->getMobileNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    .line 843
    :cond_32
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 844
    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->setMobileNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    goto :goto_0

    .line 848
    :sswitch_3d
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 849
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->signalStrength_:I

    goto :goto_0

    .line 818
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_3d
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
    .line 722
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 722
    check-cast p1, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    invoke-virtual {p0, p1}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

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
    .line 722
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMobileNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 4
    .parameter

    .prologue
    .line 907
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 909
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildPartial()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    .line 915
    :goto_1f
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 916
    return-object p0

    .line 912
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    goto :goto_1f
.end method

.method public setMobileNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 901
    invoke-virtual {p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->build()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    .line 903
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 904
    return-object p0
.end method

.method public setMobileNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 891
    if-nez p1, :cond_8

    .line 892
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 894
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->mobileNetworkInfo_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    .line 896
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 897
    return-object p0
.end method

.method public setSignalStrength(I)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 934
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 935
    iput p1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->signalStrength_:I

    .line 937
    return-object p0
.end method

.method public setType(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;
    .registers 3
    .parameter

    .prologue
    .line 867
    if-nez p1, :cond_8

    .line 868
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 870
    :cond_8
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->bitField0_:I

    .line 871
    iput-object p1, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Builder;->type_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    .line 873
    return-object p0
.end method
