.class public final Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HistoryConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;",
        "Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;",
        ">;",
        "Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1120
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 1013
    invoke-direct {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->maybeForceBuilderInitialization()V

    .line 1014
    return-void
.end method

.method static synthetic access$1300(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1007
    invoke-direct {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 1

    .prologue
    .line 1007
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1049
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1052
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 1

    .prologue
    .line 1019
    new-instance v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    invoke-direct {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1017
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 3

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    .line 1039
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1040
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1042
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->build()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1056
    new-instance v2, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;-><init>(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;Lcom/google/goggles/HistoryConfigProtos$1;)V

    .line 1057
    iget v3, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

    .line 1058
    const/4 v1, 0x0

    .line 1059
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_17

    .line 1062
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    #setter for: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    invoke-static {v2, v1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->access$1602(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 1063
    #setter for: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->access$1702(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;I)I

    .line 1064
    return-object v2

    :cond_17
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 2

    .prologue
    .line 1023
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1024
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 1025
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

    .line 1026
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->clear()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->clear()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 2

    .prologue
    .line 1156
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 1158
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

    .line 1159
    return-object p0
.end method

.method public clone()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 3

    .prologue
    .line 1030
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

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
    .line 1007
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 2

    .prologue
    .line 1034
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    return-object v0
.end method

.method public hasHistoryConfig()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1122
    iget v1, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

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

    .line 1076
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->hasHistoryConfig()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1084
    :cond_7
    :goto_7
    return v0

    .line 1080
    :cond_8
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->getHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1084
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1068
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1072
    :cond_6
    :goto_6
    return-object p0

    .line 1069
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->hasHistoryConfig()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1070
    invoke-virtual {p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->getHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeHistoryConfig(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1092
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1093
    sparse-switch v0, :sswitch_data_2a

    .line 1098
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    :sswitch_d
    return-object p0

    .line 1105
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    .line 1106
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->hasHistoryConfig()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1107
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->getHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    .line 1109
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1110
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->setHistoryConfig(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    goto :goto_0

    .line 1093
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
    .line 1007
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1007
    check-cast p1, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    invoke-virtual {p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

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
    .line 1007
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeHistoryConfig(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1144
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1146
    iget-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 1152
    :goto_1f
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

    .line 1153
    return-object p0

    .line 1149
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    goto :goto_1f
.end method

.method public setHistoryConfig(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1138
    invoke-virtual {p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->build()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 1140
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

    .line 1141
    return-object p0
.end method

.method public setHistoryConfig(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1128
    if-nez p1, :cond_8

    .line 1129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1131
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 1133
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->bitField0_:I

    .line 1134
    return-object p0
.end method
