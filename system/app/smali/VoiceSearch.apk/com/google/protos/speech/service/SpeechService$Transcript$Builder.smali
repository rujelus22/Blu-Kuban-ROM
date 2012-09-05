.class public final Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$TranscriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$Transcript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$Transcript;",
        "Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$TranscriptOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private transcript_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15223
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15306
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    .line 15224
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->maybeForceBuilderInitialization()V

    .line 15225
    return-void
.end method

.method static synthetic access$18000()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .registers 1

    .prologue
    .line 15218
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->create()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .registers 1

    .prologue
    .line 15230
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15228
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->build()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .registers 3

    .prologue
    .line 15249
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    .line 15250
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$Transcript;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15251
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15253
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .registers 6

    .prologue
    .line 15257
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$Transcript;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$Transcript;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 15258
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$Transcript;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    .line 15259
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15260
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 15261
    or-int/lit8 v2, v2, 0x1

    .line 15263
    :cond_10
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$Transcript;->access$18202(Lcom/google/protos/speech/service/SpeechService$Transcript;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15264
    #setter for: Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$Transcript;->access$18302(Lcom/google/protos/speech/service/SpeechService$Transcript;I)I

    .line 15265
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .registers 3

    .prologue
    .line 15241
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->create()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

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
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .registers 2

    .prologue
    .line 15245
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    return-object v0
.end method

.method public hasTranscript()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 15308
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

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
    .line 15279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->hasTranscript()Z

    move-result v0

    if-nez v0, :cond_8

    .line 15281
    const/4 v0, 0x0

    .line 15283
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
    .line 15218
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 15218
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$Transcript;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

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
    .line 15218
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15290
    const/4 v2, 0x0

    .line 15292
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$Transcript;
    :try_start_1
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 15297
    if-eqz v2, :cond_10

    .line 15298
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    .line 15301
    :cond_10
    return-object p0

    .line 15293
    :catch_11
    move-exception v1

    .line 15294
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-object v2, v0

    .line 15295
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 15297
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 15298
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 15269
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15275
    :cond_6
    :goto_6
    return-object p0

    .line 15270
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$Transcript;->hasTranscript()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15271
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->bitField0_:I

    .line 15272
    #getter for: Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$Transcript;->access$18200(Lcom/google/protos/speech/service/SpeechService$Transcript;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->transcript_:Ljava/lang/Object;

    goto :goto_6
.end method
