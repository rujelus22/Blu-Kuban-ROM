.class public final Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$SettingsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SettingsResponse;",
        "Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$SettingsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

.field private deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17339
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17431
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 17474
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;->PERSONALIZATION_NOT_YET_SPECIFIED:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    .line 17340
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 17341
    return-void
.end method

.method static synthetic access$20800()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    .registers 1

    .prologue
    .line 17334
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    .registers 1

    .prologue
    .line 17346
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 17344
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17334
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;
    .registers 3

    .prologue
    .line 17367
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-result-object v0

    .line 17368
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$SettingsResponse;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 17369
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 17371
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17334
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;
    .registers 6

    .prologue
    .line 17375
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 17376
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$SettingsResponse;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->bitField0_:I

    .line 17377
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 17378
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 17379
    or-int/lit8 v2, v2, 0x1

    .line 17381
    :cond_10
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    #setter for: Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->access$21002(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 17382
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 17383
    or-int/lit8 v2, v2, 0x2

    .line 17385
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    #setter for: Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->access$21102(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;)Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    .line 17386
    #setter for: Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->access$21202(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;I)I

    .line 17387
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 17334
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 17334
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    .registers 3

    .prologue
    .line 17359
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

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
    .line 17334
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 17334
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17334
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;
    .registers 2

    .prologue
    .line 17363
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecatedGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .registers 2

    .prologue
    .line 17436
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    return-object v0
.end method

.method public hasDeprecatedGaiaResult()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 17433
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->bitField0_:I

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
    .line 17402
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->hasDeprecatedGaiaResult()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 17403
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->getDeprecatedGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 17405
    const/4 v0, 0x0

    .line 17408
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeDeprecatedGaiaResult(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 17455
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 17457
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->newBuilder(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 17463
    :goto_1f
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->bitField0_:I

    .line 17464
    return-object p0

    .line 17460
    :cond_26
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    goto :goto_1f
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
    .line 17334
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 17334
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

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
    .line 17334
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17415
    const/4 v2, 0x0

    .line 17417
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$SettingsResponse;
    :try_start_1
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 17422
    if-eqz v2, :cond_10

    .line 17423
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    .line 17426
    :cond_10
    return-object p0

    .line 17418
    :catch_11
    move-exception v1

    .line 17419
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-object v2, v0

    .line 17420
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 17422
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 17423
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 17391
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 17398
    :cond_6
    :goto_6
    return-object p0

    .line 17392
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->hasDeprecatedGaiaResult()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 17393
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->getDeprecatedGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->mergeDeprecatedGaiaResult(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    .line 17395
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->hasDeprecatedPersonalizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17396
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->getDeprecatedPersonalizationEnabled()Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->setDeprecatedPersonalizationEnabled(Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    goto :goto_6
.end method

.method public setDeprecatedPersonalizationEnabled(Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 17482
    if-nez p1, :cond_8

    .line 17483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17485
    :cond_8
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->bitField0_:I

    .line 17486
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    .line 17488
    return-object p0
.end method
