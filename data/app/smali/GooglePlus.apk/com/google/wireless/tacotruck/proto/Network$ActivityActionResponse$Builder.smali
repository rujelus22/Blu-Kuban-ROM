.class public final Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11306
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11307
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->maybeForceBuilderInitialization()V

    .line 11308
    return-void
.end method

.method static synthetic access$14700(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11301
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14800()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    .registers 1

    .prologue
    .line 11301
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11339
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    .line 11340
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 11341
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 11344
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    .registers 1

    .prologue
    .line 11313
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 11311
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11301
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    .registers 3

    .prologue
    .line 11330
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    .line 11331
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 11332
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11334
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11301
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    .registers 3

    .prologue
    .line 11348
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 11349
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11301
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11301
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    .registers 1

    .prologue
    .line 11317
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11318
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 11301
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11301
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    .registers 3

    .prologue
    .line 11322
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

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
    .line 11301
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 11301
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11301
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;
    .registers 2

    .prologue
    .line 11326
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 11358
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
    .line 11301
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11301
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

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
    .line 11301
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11366
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 11367
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 11372
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11374
    :pswitch_d
    return-object p0

    .line 11367
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 11353
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 11354
    :cond_6
    return-object p0
.end method
