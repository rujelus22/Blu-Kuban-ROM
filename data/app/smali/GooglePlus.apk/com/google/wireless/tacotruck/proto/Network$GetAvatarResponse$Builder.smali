.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contentType_:Ljava/lang/Object;

.field private data_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9456
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9566
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 9590
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->contentType_:Ljava/lang/Object;

    .line 9457
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->maybeForceBuilderInitialization()V

    .line 9458
    return-void
.end method

.method static synthetic access$12300(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9451
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12400()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    .registers 1

    .prologue
    .line 9451
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9493
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    .line 9494
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 9495
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 9498
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    .registers 1

    .prologue
    .line 9463
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9461
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
    .registers 3

    .prologue
    .line 9484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    .line 9485
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9486
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9488
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
    .registers 6

    .prologue
    .line 9502
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 9503
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    .line 9504
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 9505
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 9506
    or-int/lit8 v2, v2, 0x1

    .line 9508
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->data_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->access$12602(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 9509
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 9510
    or-int/lit8 v2, v2, 0x2

    .line 9512
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->contentType_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->contentType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->access$12702(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9513
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->access$12802(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;I)I

    .line 9514
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    .registers 2

    .prologue
    .line 9467
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9468
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 9469
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    .line 9470
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->contentType_:Ljava/lang/Object;

    .line 9471
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    .line 9472
    return-object p0
.end method

.method public clearContentType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    .registers 2

    .prologue
    .line 9614
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    .line 9615
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->contentType_:Ljava/lang/Object;

    .line 9617
    return-object p0
.end method

.method public clearData()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    .registers 2

    .prologue
    .line 9583
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    .line 9584
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 9586
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    .registers 3

    .prologue
    .line 9476
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

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
    .line 9451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9595
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->contentType_:Ljava/lang/Object;

    .line 9596
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 9597
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9598
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->contentType_:Ljava/lang/Object;

    .line 9601
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

.method public getData()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 9571
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9451
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
    .registers 2

    .prologue
    .line 9480
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasContentType()Z
    .registers 3

    .prologue
    .line 9592
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

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

.method public hasData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9568
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

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
    .line 9529
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
    .line 9451
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 9451
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

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
    .line 9451
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9537
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 9538
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 9543
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9545
    :sswitch_d
    return-object p0

    .line 9550
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    .line 9551
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 9555
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    .line 9556
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->contentType_:Ljava/lang/Object;

    goto :goto_0

    .line 9538
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 9518
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9525
    :cond_6
    :goto_6
    return-object p0

    .line 9519
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9520
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    .line 9522
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9523
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->setContentType(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    goto :goto_6
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9605
    if-nez p1, :cond_8

    .line 9606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9608
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    .line 9609
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->contentType_:Ljava/lang/Object;

    .line 9611
    return-object p0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9574
    if-nez p1, :cond_8

    .line 9575
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9577
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->bitField0_:I

    .line 9578
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 9580
    return-object p0
.end method
