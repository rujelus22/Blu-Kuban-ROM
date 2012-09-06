.class public final Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiSettingsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13234
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13332
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 13385
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13235
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 13236
    return-void
.end method

.method static synthetic access$15500()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 13229
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 13241
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13239
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 3

    .prologue
    .line 13262
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    move-result-object v0

    .line 13263
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13264
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13266
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13229
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 6

    .prologue
    .line 13270
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 13271
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    .line 13272
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13273
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 13274
    or-int/lit8 v2, v2, 0x1

    .line 13276
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->access$15702(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13277
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 13278
    or-int/lit8 v2, v2, 0x2

    .line 13280
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->access$15802(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13281
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->access$15902(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;I)I

    .line 13282
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13229
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 13245
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13246
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 13247
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    .line 13248
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13249
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    .line 13250
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13229
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13229
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 13368
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    .line 13369
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 13371
    return-object p0
.end method

.method public clearSettings()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 13421
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13423
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    .line 13424
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 3

    .prologue
    .line 13254
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13229
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13229
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13229
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

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
    .line 13229
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 13337
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 13338
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 13339
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13340
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 13343
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

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13348
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 13349
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13350
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13352
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 13355
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 2

    .prologue
    .line 13258
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 13229
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13229
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2

    .prologue
    .line 13390
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13334
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSettings()Z
    .registers 3

    .prologue
    .line 13387
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

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

    .line 13299
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->hasClientLoginToken()Z

    move-result v1

    if-nez v1, :cond_8

    .line 13309
    :cond_7
    :goto_7
    return v0

    .line 13303
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->hasSettings()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 13304
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->getSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13309
    :cond_18
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 13286
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 13295
    :cond_6
    :goto_6
    return-object p0

    .line 13287
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 13288
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    .line 13289
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->access$15700(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 13292
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->hasSettings()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13293
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->getSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->mergeSettings(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13316
    const/4 v2, 0x0

    .line 13318
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 13323
    if-eqz v2, :cond_10

    .line 13324
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    .line 13327
    :cond_10
    return-object p0

    .line 13319
    :catch_11
    move-exception v1

    .line 13320
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    move-object v2, v0

    .line 13321
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 13323
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 13324
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

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
    .line 13229
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 13229
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

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
    .line 13229
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeSettings(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13409
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 13411
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13417
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    .line 13418
    return-object p0

    .line 13414
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    goto :goto_1f
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13359
    if-nez p1, :cond_8

    .line 13360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13362
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    .line 13363
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 13365
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13375
    if-nez p1, :cond_8

    .line 13376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13378
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    .line 13379
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 13381
    return-object p0
.end method

.method public setSettings(Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 13403
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13405
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    .line 13406
    return-object p0
.end method

.method public setSettings(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13393
    if-nez p1, :cond_8

    .line 13394
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13396
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13398
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->bitField0_:I

    .line 13399
    return-object p0
.end method
