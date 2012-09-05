.class public final Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;",
        "Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private queryRecognitionLanguages_:Z

.field private querySynthesisVoices_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8951
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8952
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->maybeForceBuilderInitialization()V

    .line 8953
    return-void
.end method

.method static synthetic access$10400()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .registers 1

    .prologue
    .line 8946
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .registers 1

    .prologue
    .line 8958
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8956
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8946
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .registers 3

    .prologue
    .line 8979
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v0

    .line 8980
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8981
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8983
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8946
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .registers 6

    .prologue
    .line 8987
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 8988
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->bitField0_:I

    .line 8989
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8990
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 8991
    or-int/lit8 v2, v2, 0x1

    .line 8993
    :cond_10
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->queryRecognitionLanguages_:Z

    #setter for: Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->queryRecognitionLanguages_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->access$10602(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;Z)Z

    .line 8994
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 8995
    or-int/lit8 v2, v2, 0x2

    .line 8997
    :cond_1c
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->querySynthesisVoices_:Z

    #setter for: Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->querySynthesisVoices_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->access$10702(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;Z)Z

    .line 8998
    #setter for: Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->access$10802(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;I)I

    .line 8999
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8946
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8946
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .registers 3

    .prologue
    .line 8971
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

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
    .line 8946
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 8946
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8946
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    .registers 2

    .prologue
    .line 8975
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 9014
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
    .line 8946
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 8946
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

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
    .line 8946
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9021
    const/4 v2, 0x0

    .line 9023
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;
    :try_start_1
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 9028
    if-eqz v2, :cond_10

    .line 9029
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    .line 9032
    :cond_10
    return-object p0

    .line 9024
    :catch_11
    move-exception v1

    .line 9025
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-object v2, v0

    .line 9026
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 9028
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 9029
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 9003
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9010
    :cond_6
    :goto_6
    return-object p0

    .line 9004
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->hasQueryRecognitionLanguages()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9005
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->getQueryRecognitionLanguages()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->setQueryRecognitionLanguages(Z)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    .line 9007
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->hasQuerySynthesisVoices()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9008
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->getQuerySynthesisVoices()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->setQuerySynthesisVoices(Z)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;

    goto :goto_6
.end method

.method public setQueryRecognitionLanguages(Z)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9045
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->bitField0_:I

    .line 9046
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->queryRecognitionLanguages_:Z

    .line 9048
    return-object p0
.end method

.method public setQuerySynthesisVoices(Z)Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9066
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->bitField0_:I

    .line 9067
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest$Builder;->querySynthesisVoices_:Z

    .line 9069
    return-object p0
.end method
