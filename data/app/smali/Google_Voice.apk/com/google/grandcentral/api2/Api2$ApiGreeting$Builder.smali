.class public final Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGreetingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiGreeting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiGreeting;",
        "Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiGreetingOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:I

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10235
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10348
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->name_:Ljava/lang/Object;

    .line 10236
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->maybeForceBuilderInitialization()V

    .line 10237
    return-void
.end method

.method static synthetic access$11900()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 1

    .prologue
    .line 10230
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 1

    .prologue
    .line 10242
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10240
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 3

    .prologue
    .line 10263
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v0

    .line 10264
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10265
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10267
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10230
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 6

    .prologue
    .line 10271
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 10272
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    .line 10273
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10274
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 10275
    or-int/lit8 v2, v2, 0x1

    .line 10277
    :cond_10
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->id_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGreeting;->id_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->access$12102(Lcom/google/grandcentral/api2/Api2$ApiGreeting;I)I

    .line 10278
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 10279
    or-int/lit8 v2, v2, 0x2

    .line 10281
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGreeting;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->access$12202(Lcom/google/grandcentral/api2/Api2$ApiGreeting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10282
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGreeting;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->access$12302(Lcom/google/grandcentral/api2/Api2$ApiGreeting;I)I

    .line 10283
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10230
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 2

    .prologue
    .line 10246
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10247
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->id_:I

    .line 10248
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    .line 10249
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->name_:Ljava/lang/Object;

    .line 10250
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    .line 10251
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10230
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10230
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 2

    .prologue
    .line 10341
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    .line 10342
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->id_:I

    .line 10344
    return-object p0
.end method

.method public clearName()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 2

    .prologue
    .line 10384
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    .line 10385
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->name_:Ljava/lang/Object;

    .line 10387
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 3

    .prologue
    .line 10255
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGreeting;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10230
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10230
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10230
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

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
    .line 10230
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 2

    .prologue
    .line 10259
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10230
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10230
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 10332
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->id_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 10353
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->name_:Ljava/lang/Object;

    .line 10354
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 10355
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10356
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->name_:Ljava/lang/Object;

    .line 10359
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

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10364
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->name_:Ljava/lang/Object;

    .line 10365
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10366
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10368
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->name_:Ljava/lang/Object;

    .line 10371
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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10329
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 10350
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

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
    .line 10300
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 10302
    const/4 v0, 0x0

    .line 10304
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGreeting;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 10287
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10296
    :cond_6
    :goto_6
    return-object p0

    .line 10288
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 10289
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->setId(I)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    .line 10291
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10292
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    .line 10293
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGreeting;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->access$12200(Lcom/google/grandcentral/api2/Api2$ApiGreeting;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->name_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10311
    const/4 v2, 0x0

    .line 10313
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 10318
    if-eqz v2, :cond_10

    .line 10319
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGreeting;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    .line 10322
    :cond_10
    return-object p0

    .line 10314
    :catch_11
    move-exception v1

    .line 10315
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-object v2, v0

    .line 10316
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 10318
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 10319
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGreeting;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

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
    .line 10230
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 10230
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGreeting;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

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
    .line 10230
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(I)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10335
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    .line 10336
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->id_:I

    .line 10338
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10375
    if-nez p1, :cond_8

    .line 10376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10378
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    .line 10379
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->name_:Ljava/lang/Object;

    .line 10381
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10391
    if-nez p1, :cond_8

    .line 10392
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10394
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->bitField0_:I

    .line 10395
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->name_:Ljava/lang/Object;

    .line 10397
    return-object p0
.end method
