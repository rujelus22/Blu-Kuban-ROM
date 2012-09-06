.class public final Lcom/google/goggles/TracingProtos$PointVariable$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingProtos$PointVariableOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos$PointVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/TracingProtos$PointVariable;",
        "Lcom/google/goggles/TracingProtos$PointVariable$Builder;",
        ">;",
        "Lcom/google/goggles/TracingProtos$PointVariableOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private timestampMs_:I

.field private type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 890
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->SUBSEQUENT_RESPONSE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 769
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->maybeForceBuilderInitialization()V

    .line 770
    return-void
.end method

.method static synthetic access$700(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 1

    .prologue
    .line 763
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->create()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    .line 806
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$PointVariable;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 807
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 810
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 1

    .prologue
    .line 775
    new-instance v0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 773
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 3

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    .line 797
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$PointVariable;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 798
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 800
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->build()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 814
    new-instance v2, Lcom/google/goggles/TracingProtos$PointVariable;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/TracingProtos$PointVariable;-><init>(Lcom/google/goggles/TracingProtos$PointVariable$Builder;Lcom/google/goggles/TracingProtos$1;)V

    .line 815
    iget v3, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    .line 816
    const/4 v1, 0x0

    .line 817
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_23

    .line 820
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    #setter for: Lcom/google/goggles/TracingProtos$PointVariable;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$PointVariable;->access$1002(Lcom/google/goggles/TracingProtos$PointVariable;Lcom/google/goggles/TracingProtos$PointVariable$Type;)Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 821
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 822
    or-int/lit8 v0, v0, 0x2

    .line 824
    :cond_1a
    iget v1, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->timestampMs_:I

    #setter for: Lcom/google/goggles/TracingProtos$PointVariable;->timestampMs_:I
    invoke-static {v2, v1}, Lcom/google/goggles/TracingProtos$PointVariable;->access$1102(Lcom/google/goggles/TracingProtos$PointVariable;I)I

    .line 825
    #setter for: Lcom/google/goggles/TracingProtos$PointVariable;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/TracingProtos$PointVariable;->access$1202(Lcom/google/goggles/TracingProtos$PointVariable;I)I

    .line 826
    return-object v2

    :cond_23
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 2

    .prologue
    .line 779
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 780
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->SUBSEQUENT_RESPONSE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 781
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->timestampMs_:I

    .line 783
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    .line 784
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->clear()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->clear()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearTimestampMs()Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 2

    .prologue
    .line 928
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    .line 929
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->timestampMs_:I

    .line 931
    return-object p0
.end method

.method public clearType()Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 2

    .prologue
    .line 907
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    .line 908
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->SUBSEQUENT_RESPONSE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 910
    return-object p0
.end method

.method public clone()Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 3

    .prologue
    .line 788
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->create()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildPartial()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$PointVariable;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->clone()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->clone()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->clone()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

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
    .line 763
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->clone()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 2

    .prologue
    .line 792
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->getDefaultInstance()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampMs()I
    .registers 2

    .prologue
    .line 919
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->timestampMs_:I

    return v0
.end method

.method public getType()Lcom/google/goggles/TracingProtos$PointVariable$Type;
    .registers 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    return-object v0
.end method

.method public hasTimestampMs()Z
    .registers 3

    .prologue
    .line 916
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

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

    .line 892
    iget v1, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

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

    .line 841
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->hasType()Z

    move-result v1

    if-nez v1, :cond_8

    .line 849
    :cond_7
    :goto_7
    return v0

    .line 845
    :cond_8
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->hasTimestampMs()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 849
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/TracingProtos$PointVariable;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 3
    .parameter

    .prologue
    .line 830
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->getDefaultInstance()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 837
    :cond_6
    :goto_6
    return-object p0

    .line 831
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$PointVariable;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 832
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$PointVariable;->getType()Lcom/google/goggles/TracingProtos$PointVariable$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->setType(Lcom/google/goggles/TracingProtos$PointVariable$Type;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    .line 834
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$PointVariable;->hasTimestampMs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 835
    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$PointVariable;->getTimestampMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->setTimestampMs(I)Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 858
    sparse-switch v0, :sswitch_data_2e

    .line 863
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    :sswitch_d
    return-object p0

    .line 870
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 871
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Type;->valueOf(I)Lcom/google/goggles/TracingProtos$PointVariable$Type;

    move-result-object v0

    .line 872
    if-eqz v0, :cond_0

    .line 873
    iget v1, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    .line 874
    iput-object v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    goto :goto_0

    .line 879
    :sswitch_21
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    .line 880
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->timestampMs_:I

    goto :goto_0

    .line 858
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
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
    .line 763
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 763
    check-cast p1, Lcom/google/goggles/TracingProtos$PointVariable;

    invoke-virtual {p0, p1}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$PointVariable;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;

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
    .line 763
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTimestampMs(I)Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 3
    .parameter

    .prologue
    .line 922
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    .line 923
    iput p1, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->timestampMs_:I

    .line 925
    return-object p0
.end method

.method public setType(Lcom/google/goggles/TracingProtos$PointVariable$Type;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 3
    .parameter

    .prologue
    .line 898
    if-nez p1, :cond_8

    .line 899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 901
    :cond_8
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->bitField0_:I

    .line 902
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 904
    return-object p0
.end method
