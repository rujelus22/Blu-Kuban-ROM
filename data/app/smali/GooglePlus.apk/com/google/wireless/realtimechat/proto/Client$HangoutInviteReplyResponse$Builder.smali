.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private inviteObsolete_:Z

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 45109
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 45237
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 45261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 45110
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->maybeForceBuilderInitialization()V

    .line 45111
    return-void
.end method

.method static synthetic access$62300()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 1

    .prologue
    .line 45104
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 1

    .prologue
    .line 45116
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 45114
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45104
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 3

    .prologue
    .line 45139
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    .line 45140
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 45141
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 45143
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45104
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 6

    .prologue
    .line 45157
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 45158
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45159
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 45160
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 45161
    or-int/lit8 v2, v2, 0x1

    .line 45163
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->access$62502(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 45164
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 45165
    or-int/lit8 v2, v2, 0x2

    .line 45167
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->access$62602(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45168
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 45169
    or-int/lit8 v2, v2, 0x4

    .line 45171
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->inviteObsolete_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->inviteObsolete_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->access$62702(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;Z)Z

    .line 45172
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->access$62802(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;I)I

    .line 45173
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 45104
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45104
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 2

    .prologue
    .line 45120
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 45121
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 45122
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 45124
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->inviteObsolete_:Z

    .line 45126
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45127
    return-object p0
.end method

.method public clearInviteObsolete()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 2

    .prologue
    .line 45311
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->inviteObsolete_:Z

    .line 45314
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 2

    .prologue
    .line 45285
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45286
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 45288
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 2

    .prologue
    .line 45254
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45255
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 45257
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 45104
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 45104
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 3

    .prologue
    .line 45131
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

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
    .line 45104
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 45104
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45104
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 2

    .prologue
    .line 45135
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    return-object v0
.end method

.method public getInviteObsolete()Z
    .registers 2

    .prologue
    .line 45302
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->inviteObsolete_:Z

    return v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 45266
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 45267
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 45268
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 45269
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 45272
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
    .line 45242
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasInviteObsolete()Z
    .registers 3

    .prologue
    .line 45299
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

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

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 45263
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

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

    .line 45239
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

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
    .line 45191
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
    .line 45104
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45104
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

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
    .line 45104
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45199
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 45200
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 45205
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45207
    :sswitch_d
    return-object p0

    .line 45212
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 45213
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 45214
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 45215
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45216
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 45221
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45222
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 45226
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45227
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->inviteObsolete_:Z

    goto :goto_0

    .line 45200
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 45177
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 45187
    :cond_6
    :goto_6
    return-object p0

    .line 45178
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 45179
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    .line 45181
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 45182
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    .line 45184
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->hasInviteObsolete()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45185
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getInviteObsolete()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->setInviteObsolete(Z)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    goto :goto_6
.end method

.method public setInviteObsolete(Z)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45305
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45306
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->inviteObsolete_:Z

    .line 45308
    return-object p0
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45276
    if-nez p1, :cond_8

    .line 45277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45279
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45280
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 45282
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45245
    if-nez p1, :cond_8

    .line 45246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45248
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->bitField0_:I

    .line 45249
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 45251
    return-object p0
.end method
