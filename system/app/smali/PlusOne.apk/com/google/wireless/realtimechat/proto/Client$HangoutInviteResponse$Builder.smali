.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private inviteId_:Ljava/lang/Object;

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 43002
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 43130
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    .line 43190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43003
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->maybeForceBuilderInitialization()V

    .line 43004
    return-void
.end method

.method static synthetic access$59300()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 1

    .prologue
    .line 42997
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 1

    .prologue
    .line 43009
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 43007
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 3

    .prologue
    .line 43032
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    .line 43033
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 43034
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 43036
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42997
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 6

    .prologue
    .line 43050
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 43051
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43052
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 43053
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 43054
    or-int/lit8 v2, v2, 0x1

    .line 43056
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->access$59502(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43057
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 43058
    or-int/lit8 v2, v2, 0x2

    .line 43060
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->access$59602(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43061
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 43062
    or-int/lit8 v2, v2, 0x4

    .line 43064
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->access$59702(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43065
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->access$59802(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;I)I

    .line 43066
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42997
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42997
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 2

    .prologue
    .line 43013
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 43014
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43015
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43016
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    .line 43017
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43018
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43019
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43020
    return-object p0
.end method

.method public clearInviteId()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 2

    .prologue
    .line 43178
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43179
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getInviteId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    .line 43181
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 2

    .prologue
    .line 43214
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43215
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43217
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 2

    .prologue
    .line 43147
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43148
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43150
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 42997
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42997
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 3

    .prologue
    .line 43024
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

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
    .line 42997
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 42997
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42997
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 2

    .prologue
    .line 43028
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public getInviteId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 43159
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    .line 43160
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 43161
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 43162
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    .line 43165
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

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 43195
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43196
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 43197
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 43198
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43201
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
    .line 43135
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasInviteId()Z
    .registers 3

    .prologue
    .line 43156
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

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

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 43192
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 43132
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

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
    .line 42997
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

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
    .line 42997
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43092
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 43093
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 43098
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43100
    :sswitch_d
    return-object p0

    .line 43105
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 43106
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 43107
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 43108
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43109
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 43114
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43115
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    goto :goto_0

    .line 43119
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43120
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 43093
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 43070
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 43080
    :cond_6
    :goto_6
    return-object p0

    .line 43071
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 43072
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    .line 43074
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->hasInviteId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 43075
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getInviteId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->setInviteId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    .line 43077
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43078
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    goto :goto_6
.end method

.method public setInviteId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43169
    if-nez p1, :cond_8

    .line 43170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43172
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43173
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    .line 43175
    return-object p0
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43205
    if-nez p1, :cond_8

    .line 43206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43208
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43209
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43211
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43138
    if-nez p1, :cond_8

    .line 43139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43141
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43142
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43144
    return-object p0
.end method
