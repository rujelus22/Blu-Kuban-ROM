.class public final Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private senderId_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23203
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 23367
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 23410
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 23204
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 23205
    return-void
.end method

.method static synthetic access$31200()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 1

    .prologue
    .line 23198
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 1

    .prologue
    .line 23210
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23208
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 3

    .prologue
    .line 23233
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    .line 23234
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23235
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23237
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23198
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 6

    .prologue
    .line 23251
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 23252
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23253
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 23254
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 23255
    or-int/lit8 v2, v2, 0x1

    .line 23257
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->access$31402(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23258
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 23259
    or-int/lit8 v2, v2, 0x2

    .line 23261
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->access$31502(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 23262
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 23263
    or-int/lit8 v2, v2, 0x4

    .line 23265
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->access$31602(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23266
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->access$31702(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;I)I

    .line 23267
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23198
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23198
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 2

    .prologue
    .line 23214
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 23216
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23217
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 23218
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23219
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 23220
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23221
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 2

    .prologue
    .line 23355
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23356
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 23358
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 2

    .prologue
    .line 23434
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23435
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 23437
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 2

    .prologue
    .line 23403
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 23405
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23406
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23198
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23198
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 3

    .prologue
    .line 23225
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

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
    .line 23198
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23336
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 23337
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23338
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23339
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 23342
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23198
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23198
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 2

    .prologue
    .line 23229
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23415
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 23416
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23417
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23418
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 23421
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

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 23372
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 23333
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 23412
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 23369
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

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
    .line 23198
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

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
    .line 23198
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23293
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 23294
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 23299
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23301
    :sswitch_d
    return-object p0

    .line 23306
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23307
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 23311
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23312
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 23316
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 23317
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 23318
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 23320
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 23321
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    goto :goto_0

    .line 23294
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 23271
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23281
    :cond_6
    :goto_6
    return-object p0

    .line 23272
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23273
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    .line 23275
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 23276
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    .line 23278
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23279
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 23391
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 23393
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 23399
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23400
    return-object p0

    .line 23396
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_1f
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23346
    if-nez p1, :cond_8

    .line 23347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23349
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23350
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 23352
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23425
    if-nez p1, :cond_8

    .line 23426
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23428
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23429
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 23431
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 23385
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 23387
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23388
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23375
    if-nez p1, :cond_8

    .line 23376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23378
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 23380
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->bitField0_:I

    .line 23381
    return-object p0
.end method
