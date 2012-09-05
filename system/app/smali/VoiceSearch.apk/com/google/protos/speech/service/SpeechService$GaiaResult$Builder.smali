.class public final Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$GaiaResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$GaiaResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$GaiaResult;",
        "Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$GaiaResultOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

.field private errorMessage_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16484
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16576
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->AUTHENTICATION_OK:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 16600
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    .line 16485
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->maybeForceBuilderInitialization()V

    .line 16486
    return-void
.end method

.method static synthetic access$19600()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .registers 1

    .prologue
    .line 16479
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->create()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .registers 1

    .prologue
    .line 16491
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 16489
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->build()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .registers 3

    .prologue
    .line 16512
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    .line 16513
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16514
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 16516
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .registers 6

    .prologue
    .line 16520
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 16521
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    .line 16522
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 16523
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 16524
    or-int/lit8 v2, v2, 0x1

    .line 16526
    :cond_10
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    #setter for: Lcom/google/protos/speech/service/SpeechService$GaiaResult;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->access$19802(Lcom/google/protos/speech/service/SpeechService$GaiaResult;Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;)Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 16527
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 16528
    or-int/lit8 v2, v2, 0x2

    .line 16530
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$GaiaResult;->errorMessage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->access$19902(Lcom/google/protos/speech/service/SpeechService$GaiaResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16531
    #setter for: Lcom/google/protos/speech/service/SpeechService$GaiaResult;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->access$20002(Lcom/google/protos/speech/service/SpeechService$GaiaResult;I)I

    .line 16532
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .registers 3

    .prologue
    .line 16504
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->create()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

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
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .registers 2

    .prologue
    .line 16508
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    return-object v0
.end method

.method public hasCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 16578
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

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
    .line 16549
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->hasCode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 16551
    const/4 v0, 0x0

    .line 16553
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

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
    .line 16479
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 16479
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

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
    .line 16479
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16560
    const/4 v2, 0x0

    .line 16562
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    :try_start_1
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 16567
    if-eqz v2, :cond_10

    .line 16568
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    .line 16571
    :cond_10
    return-object p0

    .line 16563
    :catch_11
    move-exception v1

    .line 16564
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-object v2, v0

    .line 16565
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 16567
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 16568
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 16536
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 16545
    :cond_6
    :goto_6
    return-object p0

    .line 16537
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 16538
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getCode()Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->setCode(Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    .line 16540
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16541
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    .line 16542
    #getter for: Lcom/google/protos/speech/service/SpeechService$GaiaResult;->errorMessage_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->access$19900(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public setCode(Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 16584
    if-nez p1, :cond_8

    .line 16585
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16587
    :cond_8
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    .line 16588
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 16590
    return-object p0
.end method
