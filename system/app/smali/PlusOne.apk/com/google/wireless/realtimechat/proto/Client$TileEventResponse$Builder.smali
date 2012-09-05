.class public final Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TileEventResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$TileEventResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5245
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5373
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 5397
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 5246
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->maybeForceBuilderInitialization()V

    .line 5247
    return-void
.end method

.method static synthetic access$6500()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 1

    .prologue
    .line 5240
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 1

    .prologue
    .line 5252
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5250
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 3

    .prologue
    .line 5275
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    .line 5276
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5277
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5279
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5240
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 6

    .prologue
    .line 5293
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 5294
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5295
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5296
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5297
    or-int/lit8 v2, v2, 0x1

    .line 5299
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->access$6702(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 5300
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5301
    or-int/lit8 v2, v2, 0x2

    .line 5303
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->access$6802(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5304
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 5305
    or-int/lit8 v2, v2, 0x4

    .line 5307
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->access$6902(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;J)J

    .line 5308
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->access$7002(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;I)I

    .line 5309
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5240
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5240
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 3

    .prologue
    .line 5256
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5257
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 5258
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 5260
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5261
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->timestamp_:J

    .line 5262
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5263
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 2

    .prologue
    .line 5421
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5422
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 5424
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 2

    .prologue
    .line 5390
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5391
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 5393
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 3

    .prologue
    .line 5447
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5448
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->timestamp_:J

    .line 5450
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5240
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5240
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 3

    .prologue
    .line 5267
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

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
    .line 5240
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5240
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5240
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 2

    .prologue
    .line 5271
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5402
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 5403
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5404
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5405
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 5408
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

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 5378
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 5438
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 5399
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

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

    .line 5375
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 5435
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

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
    .line 5240
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

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
    .line 5240
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5335
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5336
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 5341
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5343
    :sswitch_d
    return-object p0

    .line 5348
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5349
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 5350
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 5351
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5352
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 5357
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5358
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 5362
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5363
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 5336
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 5313
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5323
    :cond_6
    :goto_6
    return-object p0

    .line 5314
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5315
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    .line 5317
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5318
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    .line 5320
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5321
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    goto :goto_6
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5412
    if-nez p1, :cond_8

    .line 5413
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5415
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5416
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 5418
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5381
    if-nez p1, :cond_8

    .line 5382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5384
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5385
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 5387
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5441
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->bitField0_:I

    .line 5442
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->timestamp_:J

    .line 5444
    return-object p0
.end method
