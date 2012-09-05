.class public final Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TypingRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$TypingRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 8423
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8555
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 8579
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8615
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 8424
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->maybeForceBuilderInitialization()V

    .line 8425
    return-void
.end method

.method static synthetic access$11000()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 1

    .prologue
    .line 8418
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 1

    .prologue
    .line 8430
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8428
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 3

    .prologue
    .line 8453
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    .line 8454
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8455
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8457
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8418
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 6

    .prologue
    .line 8471
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 8472
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8473
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8474
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 8475
    or-int/lit8 v2, v2, 0x1

    .line 8477
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->access$11202(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 8478
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 8479
    or-int/lit8 v2, v2, 0x2

    .line 8481
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->access$11302(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8482
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 8483
    or-int/lit8 v2, v2, 0x4

    .line 8485
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->access$11402(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 8486
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->access$11502(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;I)I

    .line 8487
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8418
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8418
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 2

    .prologue
    .line 8434
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8435
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 8436
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8438
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8439
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 8440
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8441
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 2

    .prologue
    .line 8603
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8604
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8606
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 2

    .prologue
    .line 8651
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 8653
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8654
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 2

    .prologue
    .line 8572
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8573
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 8575
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8418
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8418
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 3

    .prologue
    .line 8445
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

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
    .line 8418
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8584
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8585
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8586
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8587
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8590
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
    .line 8418
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8418
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 2

    .prologue
    .line 8449
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 8620
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    .registers 2

    .prologue
    .line 8560
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 8581
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 8617
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

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

    .line 8557
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

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
    .line 8418
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

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
    .line 8418
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8513
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 8514
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_4a

    .line 8519
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8521
    :sswitch_d
    return-object p0

    .line 8526
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 8527
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    move-result-object v3

    .line 8528
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    if-eqz v3, :cond_0

    .line 8529
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8530
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    goto :goto_0

    .line 8535
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8536
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 8540
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v1

    .line 8541
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->hasStubbyInfo()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 8542
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 8544
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8545
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    goto :goto_0

    .line 8514
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 8491
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8501
    :cond_6
    :goto_6
    return-object p0

    .line 8492
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8493
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getType()Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    .line 8495
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8496
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    .line 8498
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8499
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 8639
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 8641
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 8647
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8648
    return-object p0

    .line 8644
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_1f
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8594
    if-nez p1, :cond_8

    .line 8595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8597
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8598
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8600
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 8633
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 8635
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8636
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8623
    if-nez p1, :cond_8

    .line 8624
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8626
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 8628
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8629
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8563
    if-nez p1, :cond_8

    .line 8564
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8566
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->bitField0_:I

    .line 8567
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 8569
    return-object p0
.end method
