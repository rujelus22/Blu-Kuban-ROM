.class public final Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 8649
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8749
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 8792
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 8650
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 8651
    return-void
.end method

.method static synthetic access$9700()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 1

    .prologue
    .line 8644
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 1

    .prologue
    .line 8656
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8654
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 3

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    move-result-object v0

    .line 8678
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8679
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8681
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8644
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 6

    .prologue
    .line 8685
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 8686
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    .line 8687
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8688
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 8689
    or-int/lit8 v2, v2, 0x1

    .line 8691
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->access$9902(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 8692
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 8693
    or-int/lit8 v2, v2, 0x2

    .line 8695
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->access$10002(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8696
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->access$10102(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;I)I

    .line 8697
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8644
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 2

    .prologue
    .line 8660
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8661
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 8662
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    .line 8663
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 8664
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    .line 8665
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8644
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8644
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearConversationId()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 2

    .prologue
    .line 8828
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    .line 8829
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 8831
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 2

    .prologue
    .line 8785
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 8787
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    .line 8788
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 3

    .prologue
    .line 8669
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8644
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8644
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8644
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

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
    .line 8644
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8797
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 8798
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8799
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8800
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 8803
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

.method public getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8808
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 8809
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8810
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8812
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 8815
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 2

    .prologue
    .line 8673
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 8644
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8644
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 8754
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 8794
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

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

    .line 8751
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

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

    .line 8714
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 8726
    :cond_7
    :goto_7
    return v0

    .line 8718
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->hasConversationId()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8722
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8726
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 8701
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8710
    :cond_6
    :goto_6
    return-object p0

    .line 8702
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8703
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    .line 8705
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8706
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    .line 8707
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->conversationId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->access$10000(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8733
    const/4 v2, 0x0

    .line 8735
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 8740
    if-eqz v2, :cond_10

    .line 8741
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    .line 8744
    :cond_10
    return-object p0

    .line 8736
    :catch_11
    move-exception v1

    .line 8737
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    move-object v2, v0

    .line 8738
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 8740
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 8741
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    :cond_21
    throw v3
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
    .line 8644
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 8644
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

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
    .line 8644
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 8773
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 8775
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 8781
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    .line 8782
    return-object p0

    .line 8778
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8819
    if-nez p1, :cond_8

    .line 8820
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8822
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    .line 8823
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 8825
    return-object p0
.end method

.method public setConversationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8835
    if-nez p1, :cond_8

    .line 8836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8838
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    .line 8839
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 8841
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 8767
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 8769
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    .line 8770
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8757
    if-nez p1, :cond_8

    .line 8758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8760
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 8762
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->bitField0_:I

    .line 8763
    return-object p0
.end method
