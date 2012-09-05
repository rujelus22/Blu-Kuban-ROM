.class public final Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$PingResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$PingResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$PingResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30426
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30540
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 30427
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->maybeForceBuilderInitialization()V

    .line 30428
    return-void
.end method

.method static synthetic access$41600()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    .registers 1

    .prologue
    .line 30421
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    .registers 1

    .prologue
    .line 30433
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30431
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 3

    .prologue
    .line 30454
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    .line 30455
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 30456
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 30458
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30421
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 6

    .prologue
    .line 30472
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 30473
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    .line 30474
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 30475
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 30476
    or-int/lit8 v2, v2, 0x1

    .line 30478
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->access$41802(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 30479
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 30480
    or-int/lit8 v2, v2, 0x2

    .line 30482
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->access$41902(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;J)J

    .line 30483
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->access$42002(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;I)I

    .line 30484
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30421
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30421
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    .registers 3

    .prologue
    .line 30437
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30438
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 30439
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    .line 30440
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->timestamp_:J

    .line 30441
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    .line 30442
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    .registers 2

    .prologue
    .line 30557
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    .line 30558
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 30560
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    .registers 3

    .prologue
    .line 30578
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    .line 30579
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->timestamp_:J

    .line 30581
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30421
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30421
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    .registers 3

    .prologue
    .line 30446
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

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
    .line 30421
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30421
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30421
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 2

    .prologue
    .line 30450
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 30545
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 30569
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30542
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

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
    .line 30566
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

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
    .line 30421
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

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
    .line 30421
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30507
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 30508
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 30513
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30515
    :sswitch_d
    return-object p0

    .line 30520
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 30521
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 30522
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 30523
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    .line 30524
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 30529
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    .line 30530
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 30508
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 30488
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30495
    :cond_6
    :goto_6
    return-object p0

    .line 30489
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30490
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    .line 30492
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30493
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    goto :goto_6
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30548
    if-nez p1, :cond_8

    .line 30549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30551
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    .line 30552
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 30554
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30572
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->bitField0_:I

    .line 30573
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->timestamp_:J

    .line 30575
    return-object p0
.end method
