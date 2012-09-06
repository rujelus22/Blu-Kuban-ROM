.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25949
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26049
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 25950
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->maybeForceBuilderInitialization()V

    .line 25951
    return-void
.end method

.method static synthetic access$35600(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25944
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$35700()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 1

    .prologue
    .line 25944
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25984
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v0

    .line 25985
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 25986
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 25989
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 1

    .prologue
    .line 25956
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 25954
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25944
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    .registers 3

    .prologue
    .line 25975
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v0

    .line 25976
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 25977
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 25979
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25944
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    .registers 6

    .prologue
    .line 25993
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 25994
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

    .line 25995
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 25996
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 25997
    or-int/lit8 v2, v2, 0x1

    .line 25999
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->access$35902(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 26000
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->access$36002(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;I)I

    .line 26001
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25944
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25944
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 2

    .prologue
    .line 25960
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25961
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 25962
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

    .line 25963
    return-object p0
.end method

.method public clearPlusoneData()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 2

    .prologue
    .line 26085
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 26087
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

    .line 26088
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 25944
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25944
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 3

    .prologue
    .line 25967
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

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
    .line 25944
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 25944
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25944
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    .registers 2

    .prologue
    .line 25971
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 26054
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26051
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

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
    .line 26013
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
    .line 25944
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 25944
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

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
    .line 25944
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26021
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 26022
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 26027
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26029
    :sswitch_d
    return-object p0

    .line 26034
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    .line 26035
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->hasPlusoneData()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 26036
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 26038
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26039
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    goto :goto_0

    .line 26022
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 26005
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26009
    :cond_6
    :goto_6
    return-object p0

    .line 26006
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26007
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;

    goto :goto_6
.end method

.method public mergePlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26073
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 26075
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 26081
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

    .line 26082
    return-object p0

    .line 26078
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    goto :goto_1f
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26067
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 26069
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

    .line 26070
    return-object p0
.end method

.method public setPlusoneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26057
    if-nez p1, :cond_8

    .line 26058
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26060
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 26062
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse$Builder;->bitField0_:I

    .line 26063
    return-object p0
.end method
