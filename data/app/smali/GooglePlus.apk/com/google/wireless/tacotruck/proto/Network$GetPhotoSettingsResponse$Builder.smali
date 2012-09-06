.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private enablePhotoDownload_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 54249
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 54250
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 54251
    return-void
.end method

.method static synthetic access$76400(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 54244
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$76500()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 54244
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 54284
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v0

    .line 54285
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 54286
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 54289
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 54256
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 54254
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 54244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
    .registers 3

    .prologue
    .line 54275
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v0

    .line 54276
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 54277
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 54279
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 54244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
    .registers 6

    .prologue
    .line 54293
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 54294
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->bitField0_:I

    .line 54295
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 54296
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 54297
    or-int/lit8 v2, v2, 0x1

    .line 54299
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->enablePhotoDownload_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->enablePhotoDownload_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->access$76702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;Z)Z

    .line 54300
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->access$76802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;I)I

    .line 54301
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 54244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 54244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 54260
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 54261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->enablePhotoDownload_:Z

    .line 54262
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->bitField0_:I

    .line 54263
    return-object p0
.end method

.method public clearEnablePhotoDownload()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 54359
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->bitField0_:I

    .line 54360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->enablePhotoDownload_:Z

    .line 54362
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 54244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 54244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    .registers 3

    .prologue
    .line 54267
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

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
    .line 54244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 54244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 54244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
    .registers 2

    .prologue
    .line 54271
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getEnablePhotoDownload()Z
    .registers 2

    .prologue
    .line 54350
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->enablePhotoDownload_:Z

    return v0
.end method

.method public hasEnablePhotoDownload()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 54347
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->bitField0_:I

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
    .line 54313
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
    .line 54244
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 54244
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

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
    .line 54244
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54321
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 54322
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 54327
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54329
    :sswitch_d
    return-object p0

    .line 54334
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->bitField0_:I

    .line 54335
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->enablePhotoDownload_:Z

    goto :goto_0

    .line 54322
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 54305
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 54309
    :cond_6
    :goto_6
    return-object p0

    .line 54306
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->hasEnablePhotoDownload()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54307
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->getEnablePhotoDownload()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->setEnablePhotoDownload(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    goto :goto_6
.end method

.method public setEnablePhotoDownload(Z)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 54353
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->bitField0_:I

    .line 54354
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->enablePhotoDownload_:Z

    .line 54356
    return-object p0
.end method
