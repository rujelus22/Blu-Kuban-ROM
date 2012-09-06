.class public final Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 38289
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 38374
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 38290
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 38291
    return-void
.end method

.method static synthetic access$46000()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;
    .registers 1

    .prologue
    .line 38284
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;
    .registers 1

    .prologue
    .line 38296
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 38294
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;
    .registers 3

    .prologue
    .line 38315
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    move-result-object v0

    .line 38316
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 38317
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 38319
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38284
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;
    .registers 6

    .prologue
    .line 38323
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 38324
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    .line 38325
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 38326
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 38327
    or-int/lit8 v2, v2, 0x1

    .line 38329
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;->access$46202(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 38330
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;->access$46302(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;I)I

    .line 38331
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38284
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;
    .registers 2

    .prologue
    .line 38300
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 38301
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 38302
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    .line 38303
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38284
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38284
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;
    .registers 2

    .prologue
    .line 38410
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 38412
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    .line 38413
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;
    .registers 3

    .prologue
    .line 38307
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 38284
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38284
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38284
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

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
    .line 38284
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;
    .registers 2

    .prologue
    .line 38311
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 38284
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38284
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 38379
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38376
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 38343
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 38351
    :cond_7
    :goto_7
    return v0

    .line 38347
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38351
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 38335
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 38339
    :cond_6
    :goto_6
    return-object p0

    .line 38336
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38337
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38358
    const/4 v2, 0x0

    .line 38360
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 38365
    if-eqz v2, :cond_10

    .line 38366
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    .line 38369
    :cond_10
    return-object p0

    .line 38361
    :catch_11
    move-exception v1

    .line 38362
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    move-object v2, v0

    .line 38363
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 38365
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 38366
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

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
    .line 38284
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 38284
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

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
    .line 38284
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 38398
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 38400
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 38406
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    .line 38407
    return-object p0

    .line 38403
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 38392
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 38394
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    .line 38395
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38382
    if-nez p1, :cond_8

    .line 38383
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38385
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 38387
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationResponse$Builder;->bitField0_:I

    .line 38388
    return-object p0
.end method
