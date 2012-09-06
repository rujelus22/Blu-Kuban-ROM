.class public final Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$Error;",
        "Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ErrorOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private detail_:Ljava/lang/Object;

.field private originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30795
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30909
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 30952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->detail_:Ljava/lang/Object;

    .line 30796
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->maybeForceBuilderInitialization()V

    .line 30797
    return-void
.end method

.method static synthetic access$42200()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 1

    .prologue
    .line 30790
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 1

    .prologue
    .line 30802
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30800
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30790
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 3

    .prologue
    .line 30823
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    .line 30824
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$Error;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 30825
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 30827
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30790
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 6

    .prologue
    .line 30841
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$Error;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$Error;-><init>(Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 30842
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$Error;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    .line 30843
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 30844
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 30845
    or-int/lit8 v2, v2, 0x1

    .line 30847
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Error;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Error;->access$42402(Lcom/google/wireless/realtimechat/proto/Client$Error;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 30848
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 30849
    or-int/lit8 v2, v2, 0x2

    .line 30851
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->detail_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Error;->detail_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Error;->access$42502(Lcom/google/wireless/realtimechat/proto/Client$Error;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30852
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Error;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$Error;->access$42602(Lcom/google/wireless/realtimechat/proto/Client$Error;I)I

    .line 30853
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30790
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30790
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 2

    .prologue
    .line 30806
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30807
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 30808
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    .line 30809
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->detail_:Ljava/lang/Object;

    .line 30810
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    .line 30811
    return-object p0
.end method

.method public clearDetail()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 2

    .prologue
    .line 30976
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    .line 30977
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDetail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->detail_:Ljava/lang/Object;

    .line 30979
    return-object p0
.end method

.method public clearOriginalCommand()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 2

    .prologue
    .line 30945
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 30947
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    .line 30948
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30790
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30790
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 3

    .prologue
    .line 30815
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

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
    .line 30790
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30790
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30790
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 2

    .prologue
    .line 30819
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30957
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->detail_:Ljava/lang/Object;

    .line 30958
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 30959
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30960
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->detail_:Ljava/lang/Object;

    .line 30963
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

.method public getOriginalCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 2

    .prologue
    .line 30914
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    return-object v0
.end method

.method public hasDetail()Z
    .registers 3

    .prologue
    .line 30954
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

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

.method public hasOriginalCommand()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30911
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

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
    .line 30868
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
    .line 30790
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30790
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$Error;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

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
    .line 30790
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30876
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 30877
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 30882
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30884
    :sswitch_d
    return-object p0

    .line 30889
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    .line 30890
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->hasOriginalCommand()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 30891
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->getOriginalCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 30893
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 30894
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->setOriginalCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    goto :goto_0

    .line 30898
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    .line 30899
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->detail_:Ljava/lang/Object;

    goto :goto_0

    .line 30877
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 30857
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30864
    :cond_6
    :goto_6
    return-object p0

    .line 30858
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Error;->hasOriginalCommand()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30859
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getOriginalCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeOriginalCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    .line 30861
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Error;->hasDetail()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30862
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->setDetail(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    goto :goto_6
.end method

.method public mergeOriginalCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30933
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 30935
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 30941
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    .line 30942
    return-object p0

    .line 30938
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    goto :goto_1f
.end method

.method public setDetail(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30967
    if-nez p1, :cond_8

    .line 30968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30970
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    .line 30971
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->detail_:Ljava/lang/Object;

    .line 30973
    return-object p0
.end method

.method public setOriginalCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 30927
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 30929
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    .line 30930
    return-object p0
.end method

.method public setOriginalCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30917
    if-nez p1, :cond_8

    .line 30918
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30920
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->originalCommand_:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 30922
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->bitField0_:I

    .line 30923
    return-object p0
.end method
