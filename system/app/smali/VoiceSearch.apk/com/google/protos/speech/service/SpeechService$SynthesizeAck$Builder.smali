.class public final Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesizeAckOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesizeAckOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23215
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23216
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->maybeForceBuilderInitialization()V

    .line 23217
    return-void
.end method

.method static synthetic access$28800()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;
    .registers 1

    .prologue
    .line 23210
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;
    .registers 1

    .prologue
    .line 23222
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23220
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23210
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .registers 3

    .prologue
    .line 23239
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-result-object v0

    .line 23240
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23241
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23243
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23210
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .registers 3

    .prologue
    .line 23247
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 23248
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23210
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23210
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;
    .registers 3

    .prologue
    .line 23231
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

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
    .line 23210
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23210
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23210
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    .registers 2

    .prologue
    .line 23235
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 23257
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
    .line 23210
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23210
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

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
    .line 23210
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23264
    const/4 v2, 0x0

    .line 23266
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;
    :try_start_1
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 23271
    if-eqz v2, :cond_10

    .line 23272
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    .line 23275
    :cond_10
    return-object p0

    .line 23267
    :catch_11
    move-exception v1

    .line 23268
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-object v2, v0

    .line 23269
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 23271
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 23272
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;)Lcom/google/protos/speech/service/SpeechService$SynthesizeAck$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 23252
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 23253
    :cond_6
    return-object p0
.end method
