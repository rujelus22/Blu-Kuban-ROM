.class public final Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiEventPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiEventPayload;",
        "Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiEventPayloadOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private events_:I

.field private payload_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36226
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 36314
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->events_:I

    .line 36335
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->payload_:Ljava/lang/Object;

    .line 36227
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->maybeForceBuilderInitialization()V

    .line 36228
    return-void
.end method

.method static synthetic access$43500()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 1

    .prologue
    .line 36221
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 1

    .prologue
    .line 36233
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 36231
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 3

    .prologue
    .line 36254
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v0

    .line 36255
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 36256
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 36258
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36221
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 6

    .prologue
    .line 36262
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 36263
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    .line 36264
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 36265
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 36266
    or-int/lit8 v2, v2, 0x1

    .line 36268
    :cond_10
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->events_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->events_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->access$43702(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;I)I

    .line 36269
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 36270
    or-int/lit8 v2, v2, 0x2

    .line 36272
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->payload_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->payload_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->access$43802(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36273
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->access$43902(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;I)I

    .line 36274
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36221
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 2

    .prologue
    .line 36237
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36238
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->events_:I

    .line 36239
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    .line 36240
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->payload_:Ljava/lang/Object;

    .line 36241
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    .line 36242
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36221
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36221
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEvents()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 2

    .prologue
    .line 36328
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    .line 36329
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->events_:I

    .line 36331
    return-object p0
.end method

.method public clearPayload()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 2

    .prologue
    .line 36371
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    .line 36372
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->getPayload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->payload_:Ljava/lang/Object;

    .line 36374
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 3

    .prologue
    .line 36246
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 36221
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36221
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36221
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

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
    .line 36221
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 2

    .prologue
    .line 36250
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 36221
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36221
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v0

    return-object v0
.end method

.method public getEvents()I
    .registers 2

    .prologue
    .line 36319
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->events_:I

    return v0
.end method

.method public getPayload()Ljava/lang/String;
    .registers 4

    .prologue
    .line 36340
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->payload_:Ljava/lang/Object;

    .line 36341
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 36342
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36343
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->payload_:Ljava/lang/Object;

    .line 36346
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

.method public getPayloadBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36351
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->payload_:Ljava/lang/Object;

    .line 36352
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36353
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36355
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->payload_:Ljava/lang/Object;

    .line 36358
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

.method public hasEvents()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 36316
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPayload()Z
    .registers 3

    .prologue
    .line 36337
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 36291
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 36278
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 36287
    :cond_6
    :goto_6
    return-object p0

    .line 36279
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->hasEvents()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36280
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->getEvents()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->setEvents(I)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    .line 36282
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36283
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    .line 36284
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->payload_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->access$43800(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->payload_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36298
    const/4 v2, 0x0

    .line 36300
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 36305
    if-eqz v2, :cond_10

    .line 36306
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    .line 36309
    :cond_10
    return-object p0

    .line 36301
    :catch_11
    move-exception v1

    .line 36302
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-object v2, v0

    .line 36303
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 36305
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 36306
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

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
    .line 36221
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 36221
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

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
    .line 36221
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEvents(I)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36322
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    .line 36323
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->events_:I

    .line 36325
    return-object p0
.end method

.method public setPayload(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36362
    if-nez p1, :cond_8

    .line 36363
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36365
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    .line 36366
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->payload_:Ljava/lang/Object;

    .line 36368
    return-object p0
.end method

.method public setPayloadBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36378
    if-nez p1, :cond_8

    .line 36379
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36381
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->bitField0_:I

    .line 36382
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->payload_:Ljava/lang/Object;

    .line 36384
    return-object p0
.end method
