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
    .line 43107
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 43235
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    .line 43295
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43108
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->maybeForceBuilderInitialization()V

    .line 43109
    return-void
.end method

.method static synthetic access$59400()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 1

    .prologue
    .line 43102
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 1

    .prologue
    .line 43114
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 43112
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43102
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 3

    .prologue
    .line 43137
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    .line 43138
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 43139
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 43141
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43102
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 6

    .prologue
    .line 43155
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 43156
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43157
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 43158
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 43159
    or-int/lit8 v2, v2, 0x1

    .line 43161
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->access$59602(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43162
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 43163
    or-int/lit8 v2, v2, 0x2

    .line 43165
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->access$59702(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43166
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 43167
    or-int/lit8 v2, v2, 0x4

    .line 43169
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->access$59802(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43170
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->access$59902(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;I)I

    .line 43171
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43102
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43102
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 2

    .prologue
    .line 43118
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 43119
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43120
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    .line 43122
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43124
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43125
    return-object p0
.end method

.method public clearInviteId()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 2

    .prologue
    .line 43283
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43284
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getInviteId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    .line 43286
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 2

    .prologue
    .line 43319
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43320
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43322
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 2

    .prologue
    .line 43252
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43253
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43255
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 43102
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43102
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 3

    .prologue
    .line 43129
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
    .line 43102
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 43102
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43102
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 2

    .prologue
    .line 43133
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public getInviteId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 43264
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    .line 43265
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 43266
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 43267
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    .line 43270
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
    .line 43300
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43301
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 43302
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 43303
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43306
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
    .line 43240
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasInviteId()Z
    .registers 3

    .prologue
    .line 43261
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
    .line 43297
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

    .line 43237
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

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
    .line 43189
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
    .line 43102
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43102
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

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
    .line 43102
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
    .line 43197
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 43198
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 43203
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43205
    :sswitch_d
    return-object p0

    .line 43210
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 43211
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 43212
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 43213
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43214
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 43219
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43220
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    goto :goto_0

    .line 43224
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43225
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 43198
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
    .line 43175
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 43185
    :cond_6
    :goto_6
    return-object p0

    .line 43176
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 43177
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    .line 43179
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->hasInviteId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 43180
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getInviteId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->setInviteId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    .line 43182
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43183
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    goto :goto_6
.end method

.method public setInviteId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43274
    if-nez p1, :cond_8

    .line 43275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43277
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43278
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->inviteId_:Ljava/lang/Object;

    .line 43280
    return-object p0
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43310
    if-nez p1, :cond_8

    .line 43311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43313
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43314
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 43316
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43243
    if-nez p1, :cond_8

    .line 43244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43246
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->bitField0_:I

    .line 43247
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43249
    return-object p0
.end method
