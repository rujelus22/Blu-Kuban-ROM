.class public final Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private lastReadTime_:D


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34360
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 34361
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->maybeForceBuilderInitialization()V

    .line 34362
    return-void
.end method

.method static synthetic access$47600()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 1

    .prologue
    .line 34355
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 1

    .prologue
    .line 34367
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 34365
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34355
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
    .registers 3

    .prologue
    .line 34386
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    .line 34387
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 34388
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 34390
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34355
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
    .registers 6

    .prologue
    .line 34404
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 34405
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    .line 34406
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 34407
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 34408
    or-int/lit8 v2, v2, 0x1

    .line 34410
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->lastReadTime_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->lastReadTime_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->access$47802(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;D)D

    .line 34411
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->access$47902(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;I)I

    .line 34412
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34355
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34355
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 3

    .prologue
    .line 34371
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 34372
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->lastReadTime_:D

    .line 34373
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    .line 34374
    return-object p0
.end method

.method public clearLastReadTime()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 3

    .prologue
    .line 34470
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    .line 34471
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->lastReadTime_:D

    .line 34473
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 34355
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34355
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 3

    .prologue
    .line 34378
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

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
    .line 34355
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 34355
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34355
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
    .registers 2

    .prologue
    .line 34382
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLastReadTime()D
    .registers 3

    .prologue
    .line 34461
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->lastReadTime_:D

    return-wide v0
.end method

.method public hasLastReadTime()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34458
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

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
    .line 34424
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
    .line 34355
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34355
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

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
    .line 34355
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34432
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 34433
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 34438
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34440
    :sswitch_d
    return-object p0

    .line 34445
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    .line 34446
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->lastReadTime_:D

    goto :goto_0

    .line 34433
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x9 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 34416
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 34420
    :cond_6
    :goto_6
    return-object p0

    .line 34417
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->hasLastReadTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34418
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->getLastReadTime()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->setLastReadTime(D)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    goto :goto_6
.end method

.method public setLastReadTime(D)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 34464
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    .line 34465
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->lastReadTime_:D

    .line 34467
    return-object p0
.end method
