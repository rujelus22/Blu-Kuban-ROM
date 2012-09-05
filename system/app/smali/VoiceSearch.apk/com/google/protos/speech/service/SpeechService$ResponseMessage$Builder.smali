.class public final Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ResponseMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
        "Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$ResponseMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

.field private errorDetail_:Ljava/lang/Object;

.field private header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

.field private status_:Lcom/google/protos/speech/service/SpeechService$Status;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7544
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 7663
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7706
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->OK:Lcom/google/protos/speech/service/SpeechService$Status;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 7730
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    .line 7783
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7545
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->maybeForceBuilderInitialization()V

    .line 7546
    return-void
.end method

.method static synthetic access$8400()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .registers 1

    .prologue
    .line 7540
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .registers 1

    .prologue
    .line 7551
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7549
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .registers 3

    .prologue
    .line 7576
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    .line 7577
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7578
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7580
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .registers 6

    .prologue
    .line 7584
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 7585
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7586
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7587
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 7588
    or-int/lit8 v2, v2, 0x1

    .line 7590
    :cond_10
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    #setter for: Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->access$8602(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7591
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 7592
    or-int/lit8 v2, v2, 0x2

    .line 7594
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    #setter for: Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->status_:Lcom/google/protos/speech/service/SpeechService$Status;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->access$8702(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;Lcom/google/protos/speech/service/SpeechService$Status;)Lcom/google/protos/speech/service/SpeechService$Status;

    .line 7595
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 7596
    or-int/lit8 v2, v2, 0x4

    .line 7598
    :cond_28
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->errorDetail_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->access$8802(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7599
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 7600
    or-int/lit8 v2, v2, 0x8

    .line 7602
    :cond_35
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    #setter for: Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->access$8902(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7603
    #setter for: Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->access$9002(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;I)I

    .line 7604
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .registers 3

    .prologue
    .line 7568
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

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
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7540
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .registers 2

    .prologue
    .line 7572
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasHeader()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7665
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    .line 7708
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 7628
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->hasHeader()Z

    move-result v1

    if-nez v1, :cond_8

    .line 7640
    :cond_7
    :goto_7
    return v0

    .line 7632
    :cond_8
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->extensionsAreInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7640
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeDebugEvent(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7807
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 7809
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->newBuilder(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7815
    :goto_20
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7816
    return-object p0

    .line 7812
    :cond_27
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->debugEvent_:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    goto :goto_20
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
    .line 7540
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 7540
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

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
    .line 7540
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7647
    const/4 v2, 0x0

    .line 7649
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    :try_start_1
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 7654
    if-eqz v2, :cond_10

    .line 7655
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    .line 7658
    :cond_10
    return-object p0

    .line 7650
    :catch_11
    move-exception v1

    .line 7651
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-object v2, v0

    .line 7652
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 7654
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 7655
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 7608
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7624
    :goto_6
    return-object p0

    .line 7609
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7610
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    .line 7612
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7613
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getStatus()Lcom/google/protos/speech/service/SpeechService$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->setStatus(Lcom/google/protos/speech/service/SpeechService$Status;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    .line 7615
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasErrorDetail()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 7616
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7617
    #getter for: Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->errorDetail_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->access$8800(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->errorDetail_:Ljava/lang/Object;

    .line 7620
    :cond_33
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasDebugEvent()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 7621
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDebugEvent()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeDebugEvent(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;

    .line 7623
    :cond_40
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6
.end method

.method public mergeHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7687
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 7689
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 7695
    :goto_1f
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7696
    return-object p0

    .line 7692
    :cond_26
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    goto :goto_1f
.end method

.method public setStatus(Lcom/google/protos/speech/service/SpeechService$Status;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7714
    if-nez p1, :cond_8

    .line 7715
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7717
    :cond_8
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->bitField0_:I

    .line 7718
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$Status;

    .line 7720
    return-object p0
.end method
