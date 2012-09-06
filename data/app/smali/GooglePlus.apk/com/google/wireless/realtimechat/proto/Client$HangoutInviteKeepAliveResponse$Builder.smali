.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 43944
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 44058
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 44082
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43945
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->maybeForceBuilderInitialization()V

    .line 43946
    return-void
.end method

.method static synthetic access$60700()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 1

    .prologue
    .line 43939
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 1

    .prologue
    .line 43951
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 43949
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43939
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 3

    .prologue
    .line 43972
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    .line 43973
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 43974
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 43976
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43939
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 6

    .prologue
    .line 43990
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 43991
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    .line 43992
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 43993
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 43994
    or-int/lit8 v2, v2, 0x1

    .line 43996
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->access$60902(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43997
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 43998
    or-int/lit8 v2, v2, 0x2

    .line 44000
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->access$61002(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44001
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->access$61102(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;I)I

    .line 44002
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43939
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43939
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 2

    .prologue
    .line 43955
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 43956
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43957
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    .line 43958
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43959
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    .line 43960
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 2

    .prologue
    .line 44106
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    .line 44107
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 44109
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 2

    .prologue
    .line 44075
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    .line 44076
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 44078
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 43939
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43939
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 3

    .prologue
    .line 43964
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

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
    .line 43939
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 43939
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43939
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 2

    .prologue
    .line 43968
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 44087
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 44088
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 44089
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 44090
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 44093
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

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 44063
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 44084
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 44060
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

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
    .line 44017
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
    .line 43939
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43939
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

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
    .line 43939
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44025
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 44026
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 44031
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 44033
    :sswitch_d
    return-object p0

    .line 44038
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 44039
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 44040
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 44041
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    .line 44042
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 44047
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    .line 44048
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 44026
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 44006
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 44013
    :cond_6
    :goto_6
    return-object p0

    .line 44007
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 44008
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    .line 44010
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44011
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    goto :goto_6
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44097
    if-nez p1, :cond_8

    .line 44098
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44100
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    .line 44101
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 44103
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44066
    if-nez p1, :cond_8

    .line 44067
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44069
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->bitField0_:I

    .line 44070
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 44072
    return-object p0
.end method
